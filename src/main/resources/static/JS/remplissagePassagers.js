function creerFormulaire() {
    document.getElementById("validerPassagers").disabled = 'true';
    var divForm = document.querySelectorAll(".formulairePassager");
    var nbPassager = document.getElementById("nbPassager");
    var valeurNbPassager = nbPassager.value;

    var myForm = document.createElement("form");
    myForm.setAttribute("action", "ajouterPassagerToReservation");
    myForm.setAttribute("method", "post");
    divForm[0].appendChild(myForm);
    
    var csrf = document.createElement("input");
    csrf.setAttribute("type","hidden");
    csrf.setAttribute("name", "${_csrf.parameterName}");
    csrf.setAttribute("value","${_csrf.token}");
    myForm.appendChild(csrf);
    for (let i = 1; i <= valeurNbPassager; i++) {

        
		var divPassager = document.createElement("div");
		myForm.appendChild(divPassager);
		
		var titrePassager = document.createElement("h4");
        titrePassager.setAttribute("id", "titrePassager");
        titrePassager.innerText = "Passager " + i;
        divPassager.appendChild(titrePassager);

        var labelNom = document.createElement("label");
        labelNom.setAttribute("for", "nom" + i);
        labelNom.innerText = "Nom :"
        labelNom.style.marginRight = "1%";
        divPassager.appendChild(labelNom);

        var nom = document.createElement("input");
        nom.setAttribute("type", "text");
        nom.setAttribute("id", "nom" + i);
        nom.setAttribute("name", "nom" + i);
        divPassager.appendChild(nom);

        var labelPrenom = document.createElement("label");
        labelPrenom.setAttribute("for", "prenom" + i);
        labelPrenom.innerText = "prenom :"
        labelPrenom.style.marginRight = "1%";
        divPassager.appendChild(labelPrenom);

        var Prenom = document.createElement("input");
        Prenom.setAttribute("type", "text");
        Prenom.setAttribute("id", "prenom" + i);
        Prenom.setAttribute("name", "prenom" + i);
        divPassager.appendChild(Prenom);
        
        var br = document.createElement("br");
        divPassager.appendChild(br);
        br = document.createElement("br");
        divPassager.appendChild(br);
        br = document.createElement("br");
        divPassager.appendChild(br);
       
        
    }
    var btnValider = document.createElement("button");
    btnValider.setAttribute("type", "submit");
	btnValider.innerHTML="Valider la réservation";
    myForm.appendChild(btnValider);

    var btnAnnuler = document.createElement("button");
    btnAnnuler.setAttribute("type", "reset");
 	btnAnnuler.innerHTML="Annuler";
    myForm.appendChild(btnAnnuler);





}