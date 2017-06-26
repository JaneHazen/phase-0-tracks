Your_dogs_preferences = {
  likes:
    ["you",
    "dirty socks",
    "eating food"],
  dislikes:
    ["anyone besides you",
    "when you're not there",
    "when you eat food"],
  toys:
    {squeakytoy: "good dog",
    rubberball: "good dog",
    postman: "bad dog"}
}

p Your_dogs_preferences[:likes][2]
p Your_dogs_preferences[:toys].first


puts "Your dog dislikes #{p Your_dogs_preferences[:dislikes][0]}. "
puts "Your dog likes #{Your_dogs_preferences[:likes].sample}"
puts "When your dog plays with his #{Your_dogs_preferences[:toys].key("bad dog")} he is a #{Your_dogs_preferences[:toys][:postman]}. "