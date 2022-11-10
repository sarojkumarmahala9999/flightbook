<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
</head>
<body>
<style>
body{
    background: -webkit-linear-gradient(left, #0072ff, #00c6ff);
}
* {
    margin: 0%;
    padding: 0%;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

.bg-blue {
    background-color: #054d7c;
}

.bg-red {
    background-color: #d80606;
}

.bg-darkred {
    background-color: #a70f0f;
    border: none;
    color: #fff !important;
}

p {
    color: #ddd;
    font-weight: 500;
    font-size: 13px;
}

select {
    font-size: 13px !important;
}

#inputState:focus {
    background-color: #a70f0f;
    color: #fff;
    box-shadow: none;
}

::placeholder {
    color: white !important;
    font-size: 13px;
}

input:focus {
    background-color: #a70f0f !important;
    color: #fff;
    box-shadow: none !important;
}

textarea:focus {
    background-color: #a70f0f !important;
}

#dropDown {
    height: 100%;
    padding-bottom: 8px;
}

#dropDown.form-control {
    appearance: revert;
    color: #fff;
}

#dropDown.form-control:focus {
    background-color: #a70f0f;
}


 </style>
<div class="row m-md-5 m-3 ">
        <div class="col-lg-4 bg-blue py-5 px-5">
            <h4 class="text-center text-white mb-4">Reservation Details</h4>
            <div class="row">
                <div class=" col-lg-4 col-md-5 offset-lg-0 offset-md-2 col-4 ">
                    <p class="fw-bold">Passenger Name:</p>
                </div>
                <div class=" col-lg-8 col-md-5 col-8">
                    <p>${reservation.getPassenger().firstName}</p>
                </div>
                
                <div class=" col-lg-4 col-md-5 offset-lg-0 offset-md-2 col-4">
                    <p class="fw-bold">Email:</p>
                </div>
                <div class=" col-lg-8 col-md-5 col-8">
                    <p>${reservation.getPassenger().email}</p>
                </div>
                
                <div class=" col-lg-4 col-md-5 offset-lg-0 offset-md-2 col-4">
                    <p class="fw-bold">Phone Number:</p>
                </div>
                <div class=" col-lg-8 col-md-5 col-8">
                    <p class="">${reservation.getPassenger().phone}</p>
                </div>
                
                <div class=" col-lg-4 col-md-5 offset-lg-0 offset-md-2 col-4">
                    <p class="fw-bold">Flight No:</p>
                </div>
                <div class=" col-lg-8 col-md-5 col-8">
                    <p class=""> ${reservation.getFlight().flightNumber}</p>
                </div>
                
                <div class=" col-lg-4 col-md-5 offset-lg-0 offset-md-2 col-4">
                    <p class="fw-bold">Airline:</p>
                </div>
                <div class=" col-lg-8 col-md-5 col-8">
                    <p class="">${reservation.getFlight().operatingAirlines}</p>
                </div>
                
                <div class=" col-lg-4 col-md-5 offset-lg-0 offset-md-2 col-4">
                    <p class="fw-bold">Departure City:</p>
                </div>
                <div class=" col-lg-8 col-md-5 col-8">
                    <p class="">${reservation.getFlight().departureCity}</p>
                </div>
                
                <div class=" col-lg-4 col-md-5 offset-lg-0 offset-md-2 col-4">
                    <p class="fw-bold">Arrival City:</p>
                </div>
                <div class=" col-lg-8 col-md-5 col-8">
                    <p class="">${reservation.getFlight().arrivalCity}</p>
                </div>
                
                <div class=" col-lg-4 col-md-5 offset-lg-0 offset-md-2 col-4">
                    <p class="fw-bold">Date Of Departure:</p>
                </div>
                <div class=" col-lg-8 col-md-5 col-8">
                    <p class=""> ${reservation.getFlight().dateOfDeparture}</p>
                </div>
                
                <div class=" col-lg-4 col-md-5 offset-lg-0 offset-md-2 col-4">
                    <p class="fw-bold">Departure Time:</p>
                </div>
                <div class=" col-lg-8 col-md-5 col-8">
                    <p class="">${reservation.getFlight().estimatedDepartureTime}</p>
                </div>
                
            </div>
        </div>
        <div class="col-lg-4 bg-red py-5 px-5">
            
                <h4 class="text-center text-white mb-4">Boarding Details</h4>
                <form action="proceedToCheckIn" method="post">
                <div class="row">
                    <div class="col-md-6 col-12 my-md-0 my-2">
                      Reservation Id : <input type="text" class="form-control bg-darkred" placeholder="Reservation Id" name = "id" value= "${reservation.id}">
                    </div>
                 </div>
                 
                 
                 
                 
                 
                 <div class="row">
                    <div class="col-md-6 col-12 my-md-0 my-2 ">
                      No. Of Bags : <input type="text" class="form-control bg-darkred"  name = "numberOfBags">
                    </div>
                </div>
                
                
                
                
                <div class="row">
                     <div class=""><button type="Submit"  class="btn btn-success">CONFIRM</button></div>
                </div>
            </form>
            </div>
        </div>
</body>
</html>