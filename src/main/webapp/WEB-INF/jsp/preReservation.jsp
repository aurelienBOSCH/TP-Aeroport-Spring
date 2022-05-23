<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Insert title here</title>

</head>
<body>
Information sur votre réservation : infos du vol etc.....
<br>
<br>
<br>
<div class="mb-3">
    <label for="nbPassager" class="form-label">Nombre de Passagers:</label><br>
    <select name="nbPassager" id="nbPassager">
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
    </select>
    <button type="button" class="btn btn-secondary" onclick="creerFormulaire()">Valider</button>
</div>
<br>
<br>
<div class="formulairePassager"></div>


<script type="text/javascript" src="/JS/remplissagePassagers.js"></script>

</body>

</html>