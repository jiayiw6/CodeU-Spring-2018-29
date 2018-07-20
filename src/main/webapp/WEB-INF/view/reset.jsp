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

<%
String isReset = (String) request.getAttribute("isReset");
%>

<!DOCTYPE html>
<html>
<title>Reset Password</title>
<%@ include file = "/header.jsp" %>
<body>
  <style>
    html {
      zoom:80%;
    }
  </style>

  <%@ include file = "/navigations.jsp" %>

  <div class="container">
    <h1>Reset Password</h1>
    <% if (request.getAttribute("error") != null) { %>
          <h2 style="color:red"><%= request.getAttribute("error") %></h2>
    <% } %>

    <% if (isReset.equals("true")) { %>
      <form class="form-group" action="/login" method="POST">
        <label class="form-control-label" for="password">New Password: </label>
        <input class="form-control" type="password" name="password" id="password" required>
        </br>
        <label class="form-control-label" for="password_two">Confirm Password: </label>
        <input class="form-control" type="password" name="password_two" id="password_two" required>
        </br>
        <button type="submit" class="btn">Reset</button>
      </form>
    <% } else { %>
       <p>Lost your password? Please enter your username. If you registered an email, you will receive a link to create a new password via email</p>
       <form class="form-group" action="/reset" method="POST">
          <label class="form-control-label" for="username">Username: </label>
          <input class="form-control" type="text" name="username" id="username" required>
          </br>
          <button type="submit" class="btn">Reset</button>
       </form>
    <% } %>
  </div>
</body>
</html>
