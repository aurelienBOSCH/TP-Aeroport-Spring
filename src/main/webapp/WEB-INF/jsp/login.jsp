<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <!DOCTYPE html>
  <html lang="fr">

  <head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

   <!--  <link rel="stylesheet" type="text/css" href="CSS/stylesheet.css">  -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>

    <title>Accueil</title>
  </head>

  <body
    style="background-image: url(https://n3pix.fr/wp-content/uploads/2022/05/BackgroundVoyage.png); background-repeat: no-repeat; background-size: 100%;">


    <div class="container" style="padding-top: 20px;">
      <div class="row">
        <div class="col">

        </div>
        <div class="col">

        </div>

        <div class="col">

          <a class="shadow btn btn-primary" href="/form_client_inscription" role="button" aria-controls="offcanvasExample">
            Inscription
          </a>

          <a class="shadow btn btn-primary" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button"
            aria-controls="offcanvasExample">
            Connexion
          </a>


          <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasExample"
            aria-labelledby="offcanvasExampleLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasExampleLabel">Connexion</h5>
              <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <div>
                <div class="col">
                  <form class="form-inline" action="login" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> <!--  A utiliser systématiquement quand on utilise la méthode POST -->
                    <div class="form-group">
                      <label for="username">Email address:</label>
                      <input type="email" class="form-control" id="username" name="username">
                    </div>
                    <div class="form-group">
                      <label for="password">Password:</label>
                      <input type="password" class="form-control" id="password" name="password">
                    </div>
                    <button type="submit" class="btn btn-primary">Se connecter</button>

                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="container" id="loisirs" style="padding-top: 20px;">
      <div class="row">
        <div class="col">
          <div class="shadow card text-dark bg-light mb-3" style="width: 18rem;">
            <img src="https://n3pix.fr/wp-content/uploads/2022/05/Istanbul-scaled.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Istanbul</h5>
              <p class="card-text">Située en bordure de la mer de Marmara et de part et d’autre du détroit du Bosphore.
              </p>
              <a href="https://fr.wikipedia.org/wiki/Istanbul" class="btn btn-primary">Découvrir Istanbul</a>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="shadow card text-dark bg-light mb-3" style="width: 18rem;">
            <img src="https://n3pix.fr/wp-content/uploads/2022/05/imageMysterieux.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Visiter</h5>
              <p class="card-text">une destination parmis une infinité de possibilités </p>
              <a href="https://www.dragonbanecreation.com/fr/tools/countrygenerator" class="btn btn-primary">Destination
                Aléatoire</a>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="shadow card text-dark bg-light mb-3" style="width: 18rem;">
            <img src="https://n3pix.fr/wp-content/uploads/2022/05/Loisirs.jpg" class="card-img-top" alt="..."
              id="sportpng">
            <div class="card-body">
              <h5 class="card-title">Loisirs</h5>
              <p class="card-text-text-primary">Kayak, Ski, Randonnées...</p>
              <a href="https://www.dragonbanecreation.com/fr/tools/countrygenerator" class="btn btn-primary">Destination
                Aléatoire</a>

            </div>
          </div>
        </div>
      </div>


    </div>

    <div class="container" id="contenuPrincipal" style="padding-top: 20px;">

      <div>
        <h1 class="text-light" style="text-align: center;" id="phraseAccroche">Votre voyage commence maintenant</h1>
      </div>



      <div class="container" style="text-align: center; padding-top: 20px;">
		  <form id="form-1" action = "affichageVols" method="post">
	 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>	 
      <input name="aeroportDepart" placeholder="Ville de depart" class="shadow"></input>
       <input name="aeroportArrivee" placeholder="Destination" class="shadow"></input>
       <input name="dateDepart" type="date" placeholder="Date de depart" class="shadow"></input>
       <input name ="dateRetour" type="date" placeholder="Date de retour" class="shadow"></input>
       <button type="submit" >Chercher !</button> <br>
        </form>
        <a href=/preReservation><button >Préréservation</button></a>
      </div>

      <div class="container" id="resacontact" style="text-align: center; padding-top: 20px;">
        <a class="shadow btn btn-primary" href="/mesReservations" role="button" aria-controls="offcanvasExample">
          Mes réservations
        </a>
        <a class="shadow btn btn-primary" href="/contact" role="button" aria-controls="offcanvasExample">
          Contact
        </a>
      </div>



    </div>









  </body>



  </html>