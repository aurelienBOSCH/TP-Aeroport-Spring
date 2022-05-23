<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Afficher Reservation</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

  <br>
  <br>
  
  <h1> Votre réservation a bien été enregistrée!</h1>

  <br>
  <br>
  <h4>Voici le résumé des informations la concernant:</h4>
  <table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">id</th>
				<th scope="col">Nom</th>
				<th scope="col">Prenom</th>
				<th scope="col">Ville de départ</th>
				<th scope="col">Ville d'arrivée</th>
				<th scope="col">Date depart</th>
				<th scope="col">Date arrivée</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="reservation" items="${ listeReservation }">
				<tr>
					<th scope="row"> ${ reservation.getNumero() }</th>
					<td>${ reservation.getPassager().getNom() }</td>
					<td>${ reservation.getPassager().getPrenom() }</td>
					<td>${ reservation.getVol().getDepartAeroport().getVille() }</td>
					<td>${ reservation.getVol().getArriveeAeroport().getVille() } </td>
					<td>${ reservation.getVol().getDateDepart() } ${ reservation.getVol().getHeureDepart() }</td>
					<td>${ reservation.getVol().getDateArrivee() } ${ reservation.getVol().getHeureArrivee() }</td>
					
				</tr>
				
			</c:forEach>
			
		</tbody>
	</table>
<a href="/login"><button type="button" class="btn btn-success">Retourner à l'Accueil</button></a>
</body>
</html>