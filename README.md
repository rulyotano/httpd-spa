# httpd-spa
Docker image to create apache httpd to allow spa apps

## Goal
Create a `httpd`server ready to use with SPA apps like reactjs/vue/angularjs.

This image redirect all the sub-routes to the main index route. In this way the routing can lay on the app routing system, like react-router, for example.
