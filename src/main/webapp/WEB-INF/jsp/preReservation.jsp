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
<h3>Informations sur votre Vol :</h3>
	<div>
			<table class="table table-dark table-striped">
				<thead>
					<tr>
						<th hidden=true scope="col">Numero du vol</th>
						<th scope="col">Aeroport de depart</th>
						<th scope="col">Aeroport d'arrivee</th>
						<th scope="col">Date et heure de depart</th>
						<th scope="col">Date et heure d'arrivee</th>
                        <th scope="col">Prix [€]</th>
					</tr>
				</thead>
				<tbody>
					
						<tr>
							<th hidden=true scope="row"><c:out value="${ vol.getIdVol() }"></c:out></th>
							<td><c:out value="${ vol.getDepartAeroport().getNom() }"></c:out></td>
							<td><c:out value="${ vol.getArriveeAeroport().getNom() }"></c:out></td>
							<td><c:out value="${ vol.getDateDepart() } ${ vol.getHeureDepart() }"></c:out></td>
							<td><c:out value="${ vol.getDateArrivee() } ${ vol.getHeureArrivee() }"></c:out></td>
                            <td><c:out value="${ vol.getPrix() }€"></c:out></td>
							
						</tr>
					
				</tbody>
			</table>
		</div>
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
    <button type="button" class="btn btn-secondary" id="validerPassagers" onclick="creerFormulaire()">Valider</button>
</div>
<br>
<br>
<div class="formulairePassager"></div>


<script type="text/javascript" src="/JS/remplissagePassagers.js"></script>

</body>

</html>