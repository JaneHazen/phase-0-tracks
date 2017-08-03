# What are some common HTTP status codes?
404 = not found (i'm not here)
403 = forbidden (i'm here but i don't want you)
500s are server-side error codes
500 = internal server error (it's not me, it's you)
503 = service unavailable (you're busy- maybe initializing? maybe overloaded?)
504 = gateway timeout

# What is the difference between a GET and a POST request?
get requests get data from the url
post requests put up a form. they're a little harder to hack because the parameters are not stored in the browser history (they're in the body instead)
post is usually used for updating data while get is used for fetching documents.

#What's the deal with cookies?
An HTTP cookie is a piece of data that is sent from a website and can be stored on the user's computer using the web browser. They're used to help remember browser activity. They can remember things like items in a cart or passwords or anything you've clicked.