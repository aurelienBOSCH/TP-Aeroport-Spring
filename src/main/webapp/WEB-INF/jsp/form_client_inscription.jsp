<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulaire d'inscription Client</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <form action="enregistrerUtilisateur" method="post" modelAttribute="user">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> <!--  A utiliser systématiquement quand on utilise la méthode POST -->
        <div class="mb-3">
          <label for="nom" class="form-label">Nom</label> <br>
          <input type="text" class="form-control" id="nom" name="nom">
           <span th:if="${#fields.hasErrors('nom')}" th:errors="*{nom}">Nom Error</span>
        </div>

        <br>
        <br>

        <div class="mb-3">
          <label for="prenom" class="form-label">Prenom</label><br>
          <input type="text" class="form-control" id="prenom" name="prenom">
          <span th:if="${#fields.hasErrors('prenom')}" th:errors="*{prenom}">Prenom Error</span>
        </div>

        <br>
        <br>

        <div class="mb-3">
            <label for="telephone" class="form-label">Téléphone</label><br>
            <input type="text" class="form-control" id="telephone" name="telephone" maxlength="10">
            <span th:if="${#fields.hasErrors('telephone')}" th:errors="*{telephone}">Telephone Error</span>
        </div>

        <br>
        <br>

        <div class="mb-3">
            <label for="username" class="form-label">Email</label><br>
            <input type="email" class="form-control" id="username" name="username">
            <span th:if="${#fields.hasErrors('username')}" th:errors="*{username}">Username Error</span>
        </div>

    
        <br>
        <br>
           <div class="mb-3">
            <label for="password" class="form-label">Mot de passe (8 caractères minimum)</label><br>
            <input type="password" minlength="8" required class="form-control" id="password" name="password">
            <span th:if="${#fields.hasErrors('password')}" th:errors="password">Password Error</span>
        </div>

    
        <br>
        <br>

        <button type="submit" class="btn btn-primary">Valider</button>
        <button type="reset" class="btn btn-primary">Annuler</button>
        
      </form>

</body>
</html>