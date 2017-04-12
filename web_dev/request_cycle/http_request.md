##### What are some common HTTP status codes?

###### Basic numerical structure common codes are in bold

1. 1XX = Informational purposes
  (100: Continue, 101: Switching protocols)
2. 2XX = Indicates success 
  (**200: OK**, 201: Created, 202: Accepted)
3. 3XX = For redirection
 (300: Multiple choices, 301: Moved Permanently)
4. 4XX = Represents client-side errors
 (400: Bad Request, **403: Access forbidden by server**, **404: Request not found**)
5. 5XX = Represents problems on server side
 (500: Internal server error, **503: Web server currently unavailable**, **504: Connection Timeout**)


##### What is the difference between a GET request and a POST request? When might each be used?
A GET request requests data from a specified resource. It can be used for viewing information. A POST request submits data to be processed to specified resources. It can be used for writing information. Unlike POST requests GET requests can be cached, remain in browser history, can be bookmarked and have length restrictions. Because of this GET requests should only be used to retrieve data and should never be used when dealing with sensitive data. 


##### Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
Cookies are small pieces of data sent from the server to user's web browser. They store small pieces of information on the users computer. This can help identify and determine session management, tracking and peronalization for user's browser interactions.