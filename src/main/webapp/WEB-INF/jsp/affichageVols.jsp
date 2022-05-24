<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">


<meta charset="UTF-8">
<title>Liste des vols disponibles pour la selection suivante :</title>
</head>
<body>
<%--     <c:if test="${ param.category != null && param.category == 'vol'}"> --%>
		<div>
			<table class="table table-dark table-striped">
				<thead>
					<tr>
						<th scope="col">Numero du vol</th>
						<th scope="col">Aeroport de depart</th>
						<th scope="col">Aeroport d'arrivee</th>
						<th scope="col">Date et heure de depart</th>
						<th scope="col">Date et heure d'arrivee</th>
                        <th scope="col">Prix [€]</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="vol" items="${ listeVol }">
						<tr>
							<th scope="row"><c:out value="${ vol.getIdVol() }"></c:out></th>
							<td><c:out value="${ vol.getDateDepart() }"></c:out></td>
							<td><c:out value="${ vol.getDateArrivee() }"></c:out></td>
							<td><c:out value="${ vol.getHeureDepart() }"></c:out></td>
							<td><c:out value="${ vol.getHeureArrivee() }"></c:out></td>
                            <td><c:out value="${ vol.getPrix() }"></c:out></td>
							<td><a
								href="/pre_Reservation?idVol=${ vol.getIdVol() }"><button
										type="button" class="btn btn-success">Réserver</button> </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
<%-- 	</c:if> --%>
</body>
</html>