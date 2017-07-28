#require sqlite
require 'sqlite3'

#create database
db = SQLite3::Database.new("money.db")
db.results_as_hash = true

#create table for money tree if there's not one there already
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS money(
    id INTEGER PRIMARY KEY,
    change INTEGER,
    today DATE
)
SQL

#Create a table
db.execute(create_table_cmd)

def put_info_into_database (db, new_money)
  db.execute("INSERT INTO money (change, today) VALUES (?, ?)", [new_money, DateTime.now.strftime(format='%Y-%m-%d')])
end

def calculate_daily_total(db)
  # add new transaction to all the others from the same day to get a daily total
  total = 0
  # get the row using today's date
  current_date = DateTime.now.strftime(format='%Y-%m-%d')
  todays_totals = db.execute("SELECT change FROM money WHERE today=?", [current_date])
  # iterate through each money addition to get daily total
  todays_totals.each do |x|
    total += x["change"]
  end
  # return the number
  total
end

def find_total_from_day(db, date)
  #pick up the sum of the total using the SUM function with sqlite (probably could have done this in the calculate_daily_total method as well....)
  daily_total= db.execute("SELECT SUM(change) FROM money WHERE today=?",[date])
  daily_total
end

text = <<-WERDS
  Welcome back! Would you like to enter an expenditure(type "add"), check your daily total(type "today"), or check a previous total(type the date "YYYY-MM-DD")? To quit, type "E".
WERDS

puts text
action = gets.chomp
  if action == "add"
    puts "How much did you just spend?"
    number = gets.chomp
    put_info_into_database(db, number)
    daily_total = calculate_daily_total(db)
    puts "So far your daily expenditure for today is #{daily_total}."
  elsif action == "today"
    daily_total = calculate_daily_total(db)
    puts "So far your daily expenditure for today is #{daily_total}."
  elsif action == "e"
    puts "Thank you, goodbye!"
  elsif  /\d\d\d\d\W\d\d\W\d\d/.match(action)
    that_day = find_total_from_day(db, action)
    puts "Your total expenditure on #{action} was #{that_day[0]["SUM(change)"]}."
  else
    puts "Ohnoes! I didn't understand; I guess you'll have to restart."
  end






