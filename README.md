Grape API on Rack example
=====================
Grape API on Rack example

# How to use
1. Clone this repository by ```git clone git@github.com:krzyczak/grape-rack.git```
2. Go into cloned directory
3. Run the API server with: ```rackup``` or if live reload is needed ```guard```

# Exploring the API
For the documentation grape-swagger tool is used whihc does that automatically based on the API methods declaration.
For displaying the documentation there is a tool called SwaggerUI which is very easy to use and makes it very easy to explore the API. It's especially usefull for development.

To use it
 ```
 git clone https://github.com/swagger-api/swagger-ui
 open swagger-ui/dist/index.html
 ```
 Then just point the SwaggerUI to the API URL.

 For example
 ```
 http://localhost:9292/api/v1/docs
 ```
 
# Additional information
Created based on ``` https://github.com/dblock/grape-on-rack.git```
