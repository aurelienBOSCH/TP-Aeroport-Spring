<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>

  <style>
    body {
      background-image: url('https://n3pix.fr/wp-content/uploads/2022/05/BackgroundVoyage.png');
      background-size: 100%;
      background-repeat: no-repeat;
      font-family: Arial, Helvetica, sans-serif;
    }

    html {
      font-family: Arial, Helvetica, sans-serif;
      box-sizing: border-box;
    }

    input[type=text],
    select,
    textarea {
      width: 100%;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
      margin-top: 6px;
      margin-bottom: 16px;
      resize: vertical;
    }

    input[type=submit] {
      background-color: #04AA6D;
      color: white;
      padding: 12px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    input[type=submit]:hover {
      background-color: #45a049;
    }

    .container {
      border-radius: 5px;
      background-color: #f2f2f2;
      padding: 20px;
    }
  </style>

  <body>

    <div class="container">
      <form action="action_page.php">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> <!--  A utiliser systématiquement quand on utilise la méthode POST -->
        <label for="fname">Prénom</label>
        <input type="text" id="fname" name="firstname" placeholder="Prenom..">

        <label for="lname">Nom</label>
        <input type="text" id="lname" name="lastname" placeholder="Nom..">

        <label for="country">Pays</label>
        <select id="country" name="country">
          <option value="australia">Australie</option>
          <option value="canada">Canada</option>
          <option value="usa">USA</option>
        </select>

        <label for="subject">Sujet</label>
        <textarea id="subject" name="subject" placeholder="" style="height:200px"></textarea>


        <button onclick="myFunction()">Envoyer</button>

        <script>
          function myFunction() {
            alert("Message envoyé");
          }
        </script>


      </form>


    </div>

  </body>

  </html>