<?php
$host = "localhost"; // Remplacez par votre hôte
$username = "root"; // Remplacez par votre utilisateur
$password = ""; // Remplacez par votre mot de passe
$dbname = "bis"; // Remplacez par votre base de données
$conn = new mysqli($host, $username, $password, $dbname);
// if ($conn) {
//     echo "DAYZA";
// }

// if ($_SERVER['REQUEST_METHOD'] === 'POST' || isset($_POST['user_submit'])) {
   
//     // Récupérer les données du formulaire
//     $name = $conn->real_escape_string($_POST['name']);
//     $email = $conn->real_escape_string($_POST['email']);
//     $date = $conn->real_escape_string($_POST['date']);
//     $age= $conn->real_escape_string($_POST['age']);
//     $numero = $conn->real_escape_string($_POST['numero']);
//     $doctor = $conn->real_escape_string($_POST['select']);
//     $comment = $conn->real_escape_string($_POST['comment']);

//     // Vérification et validation des champs obligatoires
//     if ($name!=="" && $email!="" && $age!="") {
//     $query = "INSERT INTO tbl_appointment (resident_name, age, request_date,appointment_date, appointment_type, concern, status, staff_in_charge,mobile_no,remarks)
//                 VALUES ('$name','$age','$date','$date','$comment','$comment','active', '$doctor', '$numero','$comment')";
//     $result = $conn->query($query);
//     }
   
//       if ($result) {
//         // echo "<script>alert('data inserted successfully')</script>";
//         //     
//       }
// }
?>

<!doctype html>
<html class="no-js" lang="en">
<head>
<title>Appointment</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="author" content="Inaamajay">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<meta name="description" content="Elevate your online presence with Inaamajay - a modern, versatile, multipurpose Bootstrap 5 responsive HTML5, SCSS template using highly creative 48+ ready demos.">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script> 
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	 
<link rel="shortcut icon" href="images/favicon.png">
<link rel="apple-touch-icon" href="images/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">

<link rel="preconnect" href="https://fonts.googleapis.com" crossorigin>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link rel="stylesheet" href="css/vendors.min.css" />
<link rel="stylesheet" href="css/icon.min.css" />
<link rel="stylesheet" href="css/style.min.css" />
<link rel="stylesheet" href="css/responsive.min.css" />
<link rel="stylesheet" href="demos/medical/medical.css" />
</head>
<body data-mobile-nav-style="classic">

<?php

// $conn = new mysqli("localhost", "root", "", "bis");
//  if ($conn) {
//  print "
//         <script>
//             Swal.fire({
//                 icon: 'success',
//                 title: 'DATABASE CONNECTED',
//                 text: 'Coordonnnees  valides!',
//                 confiramtaionButtonText: 'Ok',
//                 timer : 3500
//             })
//         </script>
//         ";
// }
?>


<div class="box-layout">

<header>

<nav class="navbar navbar-expand-lg header-light bg-white disable-fixed">
<div class="container-fluid">
<div class="col-auto col-lg-2 me-lg-0 me-auto">
<a class="navbar-brand" href="index.php">
<img src="images/demo-medical-logo-black.png" data-at2x="images/demo-medical-logo-black@2x.png" alt class="default-logo">
<img src="images/demo-medical-logo-black.png" data-at2x="images/demo-medical-logo-black@2x.png" alt class="alt-logo">
<img src="images/demo-medical-logo-black.png" data-at2x="images/demo-medical-logo-black@2x.png" alt class="mobile-logo">
</a>
</div>
<div class="col-auto col-lg-8 menu-order position-static">
<button class="navbar-toggler float-start" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-label="Toggle navigation">
<span class="navbar-toggler-line"></span>
<span class="navbar-toggler-line"></span>
<span class="navbar-toggler-line"></span>
<span class="navbar-toggler-line"></span>
</button>
<div class="collapse navbar-collapse justify-content-center" id="navbarNav">
<ul class="navbar-nav">
<li class="nav-item"><a href="index.php" class="nav-link">Home</a></li>
<li class="nav-item"><a href="demo-medical-about.html" class="nav-link">About</a></li>
<li class="nav-item"><a href="demo-medical-treatments.html" class="nav-link">Treatments</a></li>
<li class="nav-item"><a href="demo-medical-doctors.html" class="nav-link">Doctors</a></li>
<li class="nav-item"><a href="demo-medical-timetable.html" class="nav-link">Timetable</a></li>
<li class="nav-item"><a href="demo-medical-contact.html" class="nav-link">Contact</a></li>
</ul>
</div>
</div>
<div class="col-auto col-lg-2 text-end d-none d-sm-flex">
<div class="header-icon">
<div class="header-button">
<a href="demo-medical-appointment.html" class="btn btn-small btn-switch-text btn-base-color left-icon btn-round-edge btn-box-shadow">
<span>
<span><i class="feather icon-feather-calendar"></i></span>
<span class="btn-double-text" data-text="Book online">Book online</span>
</span>
</a>
</div>
</div>
</div>
</div>
</nav>

</header>



<section class="top-space-margin page-title-big-typography cover-background overflow-hidden position-relative p-0 border-radius-10px lg-no-border-radius" style="background-image: url(images/demo-medical-appointment-title-bg.jpg)">
<div class="container">
<div class="row small-screen">
<div class="col-xl-6 col-md-7 position-relative page-title-extra-large align-self-center" data-anime="{ &quot;el&quot;: &quot;childs&quot;, &quot;translateY&quot;: [30, 0], &quot;opacity&quot;: [0,1], &quot;duration&quot;: 600, &quot;delay&quot;: 0, &quot;staggervalue&quot;: 300, &quot;easing&quot;: &quot;easeOutQuad&quot; }">
<h2 class="fw-500 text-dark-gray mb-15px d-block"><span class="w-40px h-2px bg-base-color d-inline-block align-middle me-15px"></span>Perfect time for visit</h2>
<h1 class="text-dark-gray fw-800 ls-minus-3px sm-ls-minus-1px d-block mb-0">Book appointment</h1>
</div>
<div class="col-xl-6 col-md-5 position-relative d-none d-md-block">
<div class="w-85px h-85px border-radius-100 d-flex align-items-center justify-content-center position-absolute left-40px lg-left-minus-50px top-100px mt-10 translate-middle-y">
<div class="bg-red video-icon-box video-icon-medium feature-box-icon-rounded w-80px h-80px rounded-circle d-flex align-items-center justify-content-center">
<span>
<span class="video-icon">
<i class="fa-solid fa-house-chimney-medical icon-very-medium text-white position-relative top-minus-2px m-0"></i>
<span class="video-icon-sonar">
<span class="video-icon-sonar-bfr border border-1 border-color-red"></span>
</span>
</span>
</span>
</div>
</div>
<div class="blur-box bg-white-transparent position-absolute border-radius-6px top-50 right-minus-70px xxl-right-50px lg-right-0px w-250px p-25px text-center last-paragraph-no-margin animation-float">

<div class="icon-with-text-style-08">
<div class="feature-box feature-box-left-icon-middle overflow-hidden">
<div class="feature-box-icon me-15px">
<i class="bi bi-bandaid icon-medium text-base-color"></i>
</div>
<div class="feature-box-content last-paragraph-no-margin">
<span class="d-inline-block fs-17 fw-700 text-dark-gray">Best treatment</span>
<p class="lh-20 fs-15">Specialist doctor</p>
</div>
</div>
</div>

</div>
</div>
</div>
</div>
</section>


<section>
<div class="container">
<div class="row row-cols-1 row-cols-lg-4 row-cols-sm-2 justify-content-center align-items-start" data-anime="{ &quot;el&quot;: &quot;childs&quot;, &quot;translateY&quot;: [50, 0], &quot;opacity&quot;: [0,1], &quot;duration&quot;: 1200, &quot;delay&quot;: 0, &quot;staggervalue&quot;: 150, &quot;easing&quot;: &quot;easeOutQuad&quot; }">

<div class="col md-mb-50px sm-mb-40px text-center border-end xs-border-end-0 border-color-extra-medium-gray">
<img src="images/demo-medical-appointment-01.png" alt>
<span class="fs-18 lh-24 fw-700 text-dark-gray d-block w-50 lg-w-65 mx-auto mt-20px">Professional doctors</span>
</div>


<div class="col md-mb-50px sm-mb-40px text-center border-end md-border-end-0 border-color-extra-medium-gray">
<img src="images/demo-medical-appointment-02.png" alt>
<span class="fs-18 lh-24 fw-700 text-dark-gray d-block w-50 lg-w-65 mx-auto mt-20px">24/7 Patient support</span>
</div>


<div class="col sm-mb-40px text-center border-end xs-border-end-0 border-color-extra-medium-gray">
<img src="images/demo-medical-appointment-03.png" alt>
<span class="fs-18 lh-24 fw-700 text-dark-gray d-block w-50 lg-w-65 mx-auto mt-20px">Family medicine</span>
</div>


<div class="col text-center">
<img src="images/demo-medical-appointment-04.png" alt>
<span class="fs-18 lh-24 fw-700 text-dark-gray d-block w-50 lg-w-65 mx-auto mt-20px">24/7 Patient support</span>
</div>

</div>
</div>
</section>



<section class="p-0 position-relative">
<div class="position-absolute top-minus-70px left-minus-80px lg-left-15px opacity-1 w-350px z-index-1 d-none d-lg-inline-block"><img src="images/demo-medical-pattern.svg" alt data-bottom-top="transform: translateY(-50px)" data-top-bottom="transform: translateY(50px)"></div>
<div class="bg-light-turquoise-blue border-radius-8px lg-no-border-radius p-6 sm-p-50px sm-ps-0 sm-pe-0 overflow-hidden position-relative">
<div class="container" data-anime="{ &quot;el&quot;: &quot;childs&quot;, &quot;opacity&quot;: [0,1], &quot;duration&quot;: 600, &quot;delay&quot;: 0, &quot;staggervalue&quot;: 300, &quot;easing&quot;: &quot;easeOutQuad&quot; }">
<div class="row mb-3">
<div class="col text-center">
<h2 class="fw-800 text-dark-gray ls-minus-2px">Book an appointment</h2>
</div>
</div>
<div class="row align-items-center justify-content-center position-relative z-index-1">
<div class="col-lg-10">




 


 


<form method="POST" action="" class="row contact-form-style-02">
    <div class="col-md-6 mb-30px">
        <input class="form-control border-radius-8px border-color-white box-shadow-double-large" type="number" name="age" placeholder="AGE"   />
        <input class="input-name border-radius-4px border-color-white box-shadow-double-large form-control" type="text" name="name" placeholder="Patient's full name*"   />
    </div>

    <div class="col-md-6 mb-30px">
        <input class="border-radius-4px border-color-white box-shadow-double-large form-control" type="number" name="numero" placeholder="Numero"   />
        <input class="border-radius-4px border-color-white box-shadow-double-large form-control" type="email" name="email" placeholder="Patient's email*"   />
    </div>

    <div class="col-md-6 mb-30px">
        <input class="form-control border-radius-4px border-color-white box-shadow-double-large" type="date" name="date" value="2023-01-01" aria-label="date"   />
    </div>

    <div class="col-md-6 mb-30px">
        <div class="select">
            <select class="form-control border-radius-4px border-color-white box-shadow-double-large" name="select" aria-label="select-doctor"  >
                <option value="">Select doctor</option>
                <option value="Pediatrician - Dr. Bryan jonhson">Pediatrician - Dr. Bryan jonhson</option>
                <option value="Cardiology - Dr. Jemmy watson">Cardiology - Dr. Jemmy watson</option>
                <option value="Neurology - Dr. Jeremy dupont">Neurology - Dr. Jeremy dupont</option>
                <option value="Orthopedics - Dr. Evan thomson">Orthopedics - Dr. Evan thomson</option>
                <option value="Optometrists - Dr. Shoko mugikura">Optometrists - Dr. Shoko mugikura</option>
            </select>
        </div>
    </div>

    <div class="col-md-12 mb-3">
        <textarea class="border-radius-4px border-color-white box-shadow-double-large form-control" cols="40" rows="4" name="comment" placeholder="Your message"></textarea>
    </div>

    <div class="col-xl-6 col-md-7">
        <p class="mb-0 fs-14 lh-26 text-center text-md-start w-90 md-w-100">We are committed to protecting your privacy. We will never collect information about you without your explicit consent.</p>
    </div>
    <div class="col-xl-6 col-md-5 text-center text-md-end sm-mt-20px">

    <div class="header-button">
    <button name='user_submit' class="btn btn-medium btn-base-color btn-round-edge left-icon btn-box-shadow ">
    <i class="bi bi-calendar-check"></i>Book appointment
    </button>
    </div>
    
    </div>
    <div class="col-12">
        <div class="form-results mt-20px d-none"></div>
    </div>
</form>



<!-- <form method="POST" action="">
    <label for="nom">Nom :</label>
    <input type="text" id="nom" name="nom"  >
    <label for="email">Email :</label>
    <input type="email" id="email" name="email"  >
    <button type="submit">Envoyer</button>
</form> -->

<?php 
if ($_SERVER['REQUEST_METHOD'] == 'POST' || isset($_POST['user_submit'])) {
    $name = $conn->real_escape_string($_POST['name']);
    $email = $conn->real_escape_string($_POST['email']);
    $date = $conn->real_escape_string($_POST['date']);
    $age = $conn->real_escape_string($_POST['age']);
    $numero = $conn->real_escape_string($_POST['numero']);
    $doctor = $conn->real_escape_string($_POST['select']);
    $comment = $conn->real_escape_string($_POST['comment']);
    
    if ($name !== "" && $email !== "" && $date !== "" && $age !== "" && $numero !== "" && $doctor !== "") {
        $stmt = $conn->prepare("INSERT INTO `tbl_appointment` (`resident_name`, `age`, `staff_in_charge`, `request_date`, `concern`, `appointment_type`, `status`, `appointment_date`, `remarks`, `mobile_no`) 
        VALUES (?, ?, ?, ?, ?, ?, 'active', ?, ?, ?)");
        $stmt->bind_param("sisssssss", $name, $age, $doctor, $date, $comment, $comment, $date, $comment, $numero);
        
        if ($stmt->execute()) {
            echo "<script>swal({
                title: 'Reservation Successful',
                icon: 'success',
            });</script>";
        } else {
            echo "<script>swal({
                title: 'Error occurred',
                icon: 'error',
            });</script>";
        }
    } else {
        echo "<script>swal({
            title: 'Please fill all required fields',
            icon: 'error',
        });</script>";
    }
}
?>






<?php
// if ($_SERVER['REQUEST_METHOD'] == 'POST' || isset($_POST['user_submit'])) 
// {
//     echo "<script>swal({
//         title: 'Reservation Succesful',
//         icon: 'success',
//         });
//         </script>";

//     $name = $conn->real_escape_string($_POST['name']);
//     $email = $conn->real_escape_string($_POST['email']);
//     $date = $conn->real_escape_string($_POST['date']);
//     $age= $conn->real_escape_string($_POST['age']);
//     $numero = $conn->real_escape_string($_POST['numero']);
//     $doctor = $conn->real_escape_string($_POST['select']);
//     $comment = $conn->real_escape_string($_POST['comment']);
    
//     // if($name == "" ){
//     //     echo "<script>swal({
//     //         title: 'Fill the proper details',
//     //         icon: 'error',
//     //     });
//     //     </script>";
//     // }

     
//     if ($name !== "") {
//         $sql = "INSERT INTO `tbl_appointment` (`resident_name`, `age`, `staff_in_charge`, `request_date`, `concern`, `appointment_type`, `status`, `appointment_date`, `remarks`, `mobile_no`) VALUES
//         ('$name','$age','$doctor','$date','$comment','$comment','active','$date','$comment','$numero')";

 
//       if (mysqli_query($conn,$sql)) { 
//       echo "<script>swal({
//         title: 'Reservation Succesful',
//         icon: 'success',
//         });
//         </script>";
//      }
     

//     }
// }
?>
 








</div>
</div>
</div>
</div>
</section>


<section class="half-section">
<div class="container">
<div class="row align-items-center ps-5 pe-5 flex-column flex-lg-row text-center text-lg-start">
<div class="col-auto md-mb-10px" data-anime="{ &quot;translateX&quot;: [-50, 0], &quot;opacity&quot;: [0,1], &quot;duration&quot;: 900, &quot;delay&quot;: 0, &quot;staggervalue&quot;: 300, &quot;easing&quot;: &quot;easeOutQuad&quot; }">
<img src="images/demo-medical-home-05.png" alt />
</div>
<div class="col" data-anime="{ &quot;translateX&quot;: [-50, 0], &quot;opacity&quot;: [0,1], &quot;duration&quot;: 900, &quot;delay&quot;: 0, &quot;staggervalue&quot;: 300, &quot;easing&quot;: &quot;easeOutQuad&quot; }">
<span class="text-dark-gray fw-500 fs-18 w-70 xl-w-80 lg-w-100 d-block">Please feel free to contact our friendly reception staff with any medical enquiry or call <a href="tel:12345678910" class="text-decoration-line-bottom fw-700 text-dark-gray">06 61 43 56 22</a></span>
</div>
<div class="col-auto md-mt-35px" data-anime="{ &quot;translateX&quot;: [50, 0], &quot;opacity&quot;: [0,1], &quot;duration&quot;: 600, &quot;delay&quot;: 0, &quot;staggervalue&quot;: 300, &quot;easing&quot;: &quot;easeOutQuad&quot; }">
<a href="tel:1234567891" class="btn btn-large btn-switch-text btn-dark-gray btn-round-edge left-icon">
<span>
<span><i class="feather icon-feather-phone-call"></i></span>
<span class="btn-double-text" data-text="+1 234 567 8910">06 61 42 52 62</span>
</span>
</a>
</div>
</div>
</div>
</section>


<footer class="p-0">
<div class="footer-top bg-dark-gray pt-35px pb-35px border-radius-6px lg-no-border-radius position-relative overflow-hidden">
<div class="position-absolute right-minus-100px bottom-minus-80px margin-100px-top opacity-1 w-250px"><img src="images/demo-medical-pattern-white.svg" alt class></div>
<div class="container">
<div class="row align-items-center">

<div class="col-xl-3 col-sm-6 order-1 text-center text-sm-start xs-mb-20px">
<a href="index.php" class="footer-logo d-inline-block"><img src="images/demo-medical-logo-white.png" data-at2x="images/demo-medical-logo-white@2x.png" alt></a>
</div>


<div class="col-xl-6 order-3 order-xl-2 lg-mt-10px">
<ul class="footer-navbar text-center lh-normal">
<li class="nav-item"><a href="index.php" class="nav-link">Home</a></li>
<li class="nav-item"><a href="demo-medical-about.html" class="nav-link">About</a></li>
<li class="nav-item"><a href="demo-medical-treatments.html" class="nav-link">Treatments</a></li>
<li class="nav-item"><a href="demo-medical-doctors.html" class="nav-link">Doctors</a></li>
<li class="nav-item"><a href="demo-medical-timetable.html" class="nav-link">Timetable</a></li>
<li class="nav-item"><a href="demo-medical-contact.html" class="nav-link">Contact</a></li>
</ul>
</div>


<div class="col-xl-3 col-sm-6 position-relative text-center text-sm-end elements-social social-icon-style-08 order-2 order-xl-3">
<ul class="small-icon light">
<li><a class="facebook" href="https://www.facebook.com/" target="_blank"><i class="fa-brands fa-facebook-f"></i></a></li>
<li><a class="instagram" href="https://www.instagram.com" target="_blank"><i class="fa-brands fa-instagram"></i></a></li>
<li><a class="twitter" href="https://www.twitter.com" target="_blank"><i class="fa-brands fa-twitter"></i></a></li>
<li><a class="dribbble" href="http://www.dribbble.com" target="_blank"><i class="fa-brands fa-dribbble"></i></a></li>
</ul>
</div>

</div>
</div>
</div>
<div class="container">
<div class="row row-cols-1 row-cols-md-2 align-items-center pt-30px pb-30px">

<div class="col last-paragraph-no-margin fs-15 text-center text-md-start sm-mb-10px">
<p>&copy; 2024 Katim is Proudly Powered by <a href="https://www.Inaamajay.com/" target="_blank" class="text-decoration-line-bottom text-dark-gray fw-600">Katim</a></p>
</div>


<div class="col text-end fs-15 text-center text-md-end">
<ul class="footer-navbar lh-normal">
<li class="me-35px sm-me-20px"><a href="#">Terms and conditions</a></li>
<li><a href="#">Privacy policy</a></li>
</ul>
</div>

</div>
</div>
</footer>


<div class="sticky-wrap d-none d-xl-inline-block" data-animation-delay="100" data-shadow-animation="true">
<span class="fs-15 fw-500"><i class="bi bi-envelope icon-small me-10px align-middle"></i>Arrange your appointment — <a href="demo-medical-appointment.html" class="text-decoration-line-bottom fw-700">Book appointment</a></span>
</div>

</div>

<div class="scroll-progress d-none d-xxl-block">
<a href="#" class="scroll-top" aria-label="scroll">
<span class="scroll-text">Scroll</span><span class="scroll-line"><span class="scroll-point"></span></span>
</a>
</div>


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/vendors.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
