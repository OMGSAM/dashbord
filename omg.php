<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 
<html>
    <body>
        
 
                        <form ethod="POST"  action="" >
                            <div class="row justify-content-center">
                                <div class="col-md-6 sm-mb-25px">
                                    <input class="mb-25px form-control" name="name" placeholder="Patient's full name*"
                                           type="text"/>
<input class="mb-25px form-control" name="age" placeholder="age"
                                           type="number"/>

<input class="mb-25px form-control" name="numero" placeholder="numero"
                                           type="number"/>
                                    <input class="mb-25px form-control " name="email" placeholder="Patient's email*"
                                           type="text"/>
                                    <div class="date-time row gutter-very-small">
                                        <div class="date-icon col-xl-6 lg-mb-25px">
                                            <input aria-label="date" class="form-control"    
                                                   name="date" type="date" value="2023-01-01"/>
                                        </div>
                                        <div class="time-icon col-xl-6">
                                            <input aria-label="time" class="form-control"  
                                                   name="time" type="time" value="09:12"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-25px select">
                                        
                                        <select aria-label="select-doctor" class="form-control" name="select">
                                            <option value>Select doctor</option>
                                            <option value="Pediatrician - Dr. Bryan jonhson">Pediatrician - Dr. Bryan
                                                jonhson
                                            </option>
                                            <option value="Cardiology - Dr. Jemmy watson">Cardiology - Dr. Jemmy
                                                watson
                                            </option>
                                            <option value="Neurology - Dr. Jeremy dupont">Neurology - Dr. Jeremy
                                                dupont
                                            </option>
                                            <option value="Orthopedics - Dr. Evan thomson">Orthopedics - Dr. Evan
                                                thomson
                                            </option>
                                            <option value="Optometrists - Dr. Shoko mugikura">Optometrists - Dr. Shoko
                                                mugikura
                                            </option>
                                        </select>
                                    </div>
                                    <textarea class="form-control" cols="20" name="comment" placeholder="Your message"
                                              rows="4"></textarea>
                                </div>
                                <div class="col-md-6 mt-25px sm-mt-20px">
                                    <p class="mb-0 fs-13 lh-24 text-center text-md-start">We are committed to protecting
                                        your privacy. We will never collect information about you without your explicit
                                        consent.</p>
                                </div>
                                <div class="col-md-6 text-center text-md-end mt-25px sm-mt-20px">
                                  

                                     <button name='user_submit' class="btn btn-medium btn-base-color btn-round-edge left-icon btn-box-shadow submit"
                                            ><i class="bi bi-calendar-check"></i>Book appointment
                                    </button>
                                </div>
                                <div class="col-12">
                                    <div class="form-results mt-20px d-none text-center"></div>
                                </div>
                            </div>
                        </form> 
                        



<form method="POST" action="">
    <label for="nom">Nom :</label>
    <input type="text" id="nom" name="nom"  >
    <label for="email">Email :</label>
    <input type="email" id="email" name="email"  >
    <button type="submit">Envoyer</button>
</form>



<?php
$host = "localhost"; // Remplacez par votre hôte
$username = "root"; // Remplacez par votre utilisateur
$password = ""; // Remplacez par votre mot de passe
$dbname = "bis"; // Remplacez par votre base de données
$conn = new mysqli($host, $username, $password, $dbname);
?>


<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    echo "REQUEST DAYZA    ";
    // $nom = $_POST['nom'];
    echo "<script>swal({
        title: 'Reservation NONO',
        icon: 'warning',
    });
</script>";
}
?>




<?php
if ($conn) {
                            echo "DAYZA CNX";
                        }
?>



                        </body>
                        </html>

                       
