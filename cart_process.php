<?php

session_start();
if(!isset($_SESSION["uid"])){
	header("location:index.php");
}
?>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
html {
height: 100%
}
head,
body {
background-color: #BA68C8
}
.box1 {
background-color: #263238;
color: white
}
.card-header {
background: none
}
.box1 {
height: 600px
}
.box2 {
height: 600px
}
.heading {
font-weight: 900
}
.heading2 {
padding-left: 40px
}
.box2-head {
font-weight: 900;
background: none;
border: none
}
.card-header {
margin-top: 50px;
padding-left: 19px
}
.sub-heading {
font-weight: 900;
font-size: 14px
}
.sub-heading2 {
border: 1px solid white;
padding-top: 10px;
padding-bottom: 10px
}
.sub-heading1 {
border: 1px solid white;
padding-top: 10px;
padding-bottom: 10px
}
.credit {
position: absolute;
left: 8vw
}
.frnt {
z-index: 2;
position: absolute
}
.back {
position: absolute;
z-index: 1;
left: 70px;
top: 30px
}
.form-group>input {
border: none;
border-bottom: 1px solid lightgray
}
.card-number>input {
border: none
}
.card-number {
border-bottom: 1px solid lightgray
}
.card-number>input::-webkit-input-placeholder {
color: peachpuff;
font-size: 25px
}
.card-number>input::-moz-placeholder {
color: peachpuff;
font-size: 25px
}
.card-number>input:-ms-input-placeholder {
color: peachpuff;
font-size: 25px
}
.card-number>input::placeholder {
color: peachpuff;
font-size: 25px
}
input.focus,
input:focus {
outline: 0;
box-shadow: none !important
}
.card-number.hover,
.card-number:hover {
outline: 0;
box-shadow: none !important;
border-bottom: 1px solid lightskyblue
}
select.focus,
select:focus {
outline: 0;
box-shadow: none !important
}
.form-control {
border: none;
border-bottom: 1px solid lightgray
}
.txt {
justify-content: space-between
}
.txt>p>small {
font-weight: 900
}
.total {
justify-content: space-between
}
.btn {
height: 60px;
background-color: #00B8D4;
color: white
}
.footer2 {
background: none
}
.btn.focus,
.btn:focus {
outline: 0;
box-shadow: none !important
}
@media (min-width: 1025px) and (max-width: 1280px) {
.inner {
margin-left: 150px
}
}
</style>
</head>
<body>
<div class="container-fluid mt-5 mb-5 p-0">
<div class="inner row d-flex justify-content-center">
<div class="card col-md-5 col-12 box1">
<div class="card-content">
<div class="card-header">
<div class="heading mb-3"> PAYMENT METHOD </div>
<div class="sub-heading row text-center m-0">
<div class="col-6 col-md-6 sub-heading1">By Credit Card</div>
<div class="col-6 col-md-6 sub-heading2">By Debit Card</div>
</div>
</div>
<div class="card-body">
<p><small> You choose the method of payment with a credit/debit card. Enter your payment details. </small></p>
<div class="credit d-block mt-5 mx-auto"> <img class="frnt" src="product_images\CardArt-Plain-Front-Spotlight.png" width="200px"> <img class="back" src="product_images\main-qimg-bd6b7e786c2fdb670c89c6ded8fcb973.webp" width="200px"> </div>
</div>
</div>
</div>
<div class="card col-md-5 col-12 box2">
<div class="card-content">
<div class="card-header box2-head">
<div class="heading2"> PAYMENT DETAILS </div>
</div>
<div class="card-body col-10 offset-1">

<form onsubmit="return pay()" action="payment_success.php">

<div class="form-group"> <label><small><strong class="text-muted">CARD HOLDER</strong></small></label> <input type="text" class="form-control" id="c_name" placeholder="Anurag Govind Mahalpure" required minlength="5" maxlength="30"> </div>
<div class="form-group"> <label><small><strong class="text-muted">CARD NUMBER</strong></small></label>
<div class="d-flex card-number"> <input class="form-control" type="text" placeholder="1234-4567-4543-1685" id="cno" required > <i class="fas fa-credit-card text-muted fa-2x"></i> </div>
</div>
<div class="line3">
<div class="txt d-flex">
<p><small class="text-muted">EXPIRATION DATE</small></p>
<p><small class="text-muted">CVV</small></p>
</div>
<div class="form-group row"> <select class="form-control col-5">
<option>January</option>
<option>February</option>
<option>march</option>
<option>April</option>
<option>May</option>
<option>June</option>
<option>July</option>
<option>August</option>
<option>September</option>
<option>October</option>
<option>November</option>
<option>December</option>
</select> <select class="form-control col-4">
<option>2023</option>
<option>2024</option>
<option>2025</option>
<option>2026</option>
<option>2027</option>
<option>2028</option>
</select> <input class="col-3 col-md-2 offset-md-1 text-left" type="text" placeholder="234" id="cv" required > </div>
</div>

</div>
<div class="card-footer col-10 offset-1 border-0 footer2">
<div class="d-flex total mb-5">
<p><strong>TOTAL</strong></p>
<p><strong>Rs.<?php echo $_SESSION['finalcost'];?> </strong></p>
</div> <input type="submit" class="btn col-12"  id="pbtn" value="PAY">
</form></div>
</div>
</div>
</div>
</div>
<script type="text/javascript">
    var re1=/^\d{4}\s\d{4}\s\d{4}\s\d{4}$/;
    var re2=/^\d{3}$/;
    
    function pay(){
        var cn=document.getElementById("cno").value;
        var cv=document.getElementById("cv").value;
        var response=confirm("Make Payment?");
        if(response){
            if(re1.test(cn)==true){
                if(re2.test(cv)!=false)
                {
                    return true;
                }
                else{
                    alert("Check Your Entered details");
                    return false;
                }
            }
            else{
                    alert("Check Your Entered details");
                    return false;
            }
            
        }
        else
            return false;
    }
</script>
</body>
</html>