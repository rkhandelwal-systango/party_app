$( document ).ready(function() {
  $("#form").click(function() {
    validateForm();
  });
});

function validateTitle() {
  if (document.getElementById("parties_title").value == "") {
    document.getElementById('errfn').style.color = "#ff0000";
    document.getElementById('errfn').innerHTML="  ** Field Cannot be black";
  }
  else {
    document.getElementById('errfn').innerHTML = " ";

  }
}


function validateType() {
  if (document.getElementById("parties_party_type").value == "") {
    document.getElementById('errfn1').style.color = "#ff0000";
    document.getElementById('errfn1').innerHTML="  ** Field Cannot be black";
  }else{
    document.getElementById('errfn1').innerHTML = " ";
  }
}

function validateTime() {
  if (document.getElementById("parties_time").value == "") {
    document.getElementById('errfn3').style.color = "#ff0000";
    document.getElementById('errfn3').innerHTML="  ** Field Cannot be black";
  }else{
    document.getElementById('errfn3').innerHTML = " ";
  }
}


function validateDate() {
  if (document.getElementById("parties_party_date").value == "") {
    document.getElementById('errfn2').style.color = "#ff0000";
    document.getElementById('errfn2').innerHTML="  ** Field Cannot be black";
  }else{
    document.getElementById('errfn2').innerHTML = " ";
  }
}


function validatePerson() {
  if (document.getElementById("parties_no_of_person").value == "") {
    document.getElementById('errfn4').style.color = "#ff0000";
    document.getElementById('errfn4').innerHTML="  ** Field Cannot be black";
  }else{
    document.getElementById('errfn4').innerHTML = " ";
  }
}


function validateVenue() {
  if (document.getElementById("parties_venue").value == "") {
    document.getElementById('errfn5').style.color = "#ff0000";
    document.getElementById('errfn5').innerHTML="  ** Field Cannot be black";
  }else{
    document.getElementById('errfn5').innerHTML = " ";
  }
}
