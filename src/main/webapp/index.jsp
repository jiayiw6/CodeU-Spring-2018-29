<%--
  Copyright 2017 Google Inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
--%>
<!DOCTYPE html>
<html>
<head>
  <title>CodeByter's Chat App</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="/css/main.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <style>

  </style>


</head>
<body>

  <nav class="navbar navbar-inverse">

    <div class="container-fluid">

      <div class="navbar-header">

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=#myNavbar>

          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>

        </button>

        <%-- Logo can go on this line --%>
        <a class="navbar-brand" href="#"><img src=""></a>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar right">
          <%@ include file = "/navigations.jsp" %>
      </div>
    </div>

  </nav>

  <div id="container">
    <div style="width:75%; margin-left:auto; margin-right:auto; margin-top: 50px;">
      <h1>CodeByter's Chat App</h1>
      <h2>Welcome!</h2>
      <p>
        Through our site, you will be able to connect with the world through online chat!
      </p>
      <ul>
        <% if (request.getSession().getAttribute("user") != null) { %>
          <li>Go to the <a href="/users/<%= request.getSession().getAttribute("user") %>">
              My profile</a> page to view your profile.</li>
        <% } else { %>
          <li><a href="/login">Login</a> to get started.</li>
        <% } %>
        <li>Go to the <a href="/conversations">conversations</a> page to
            create or join a conversation.</li>
        <li>View the <a href="/about.jsp">about</a> page to learn more about the
            project.</li>
        <li>If you are an administrator, check out the <a href="/admin">Admin Page</a>.</li>
      </ul>
    </div>
  </div>
</body>
</html>
