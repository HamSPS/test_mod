<!DOCTYPE html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>ກະຊວງສຶກສາທິການແລະກິລາ</title>
    <!-- plugin css for this page -->
    <link rel="stylesheet" href="./assets/vendors/mdi/css/materialdesignicons.min.css" />
    <link rel="stylesheet" href="./assets/vendors/aos/dist/aos.css/aos.css" />
    <link rel="stylesheet" href="./assets/vendors/owl.carousel/dist/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="./assets/vendors/owl.carousel/dist/assets/owl.theme.default.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- End plugin css for this page -->
    <link rel="shortcut icon" href="image/logo.png" />
    <!-- inject:css -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="dist/css/alt/style.css">
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous"> -->
    <!-- endinject -->
    <style>
    .img-fit {
        width: 250px;
        height: 200px;
        object-fit: cover;
    }

    /* .text-show {
        line-clamp: 2;
        white-space: nowrap;
	    overflow: hidden;
        text-overflow: ellipsis ;
    } */
    </style>
</head>

<body>

    <div class="container-scroller">
        <div class="main-panel">

            <?php
include ("./oop/connect.php");
include ("./navbar.php");

?>


            <div class="container">
                <div class="world-news">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="d-flex position-relative  float-left">
                                <h3 class="section-title">ແຈ້ງການ</h3>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="row row-cols-1 row-cols-md-3"> -->
                    <!-- <div class="waitload" id="waitload">
                        <hr size="1" width="90%">
                        <p align="center">ບໍ່ມີຂໍ້ມູນss</p>
                        <hr size="1" width="90%">
                    </div> -->
                    <!-- <div class="result"></div> -->
                    <!-- </div> -->
                    <div class="row result">
                        
                        
                    </div>

                </div>
            </div>


        </div>
    </div>
    <!-- inject:js -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- plugin js for this page -->
    <!-- <script src="./assets/vendors/owl.carousel/dist/owl.carousel.min.js"></script> -->
    <!-- End plugin js for this page -->
    <!-- Custom js for this page-->
    <!-- <script src="./assets/js/demo.js"></script> -->
    <script src="dist/js/jquery.min.js"></script>
    <!-- End custom js for this page-->
    
    <script>
        var start = 0;
        var limit = 6;
        var reachedMax = false;

        $(window).scroll(function(){

            if($(window).scrollTop() >= $(document).height() - $(window).height()){
                getData();
            }
        });



        $(document).ready(function(){
            getData();
        });

        function getData(){
            if(reachedMax){
                return;
            }
                $.ajax({
                    url: 'data.php',
                    method: 'POST',
                    dataType: 'text',
                    data: {
                        getData: 1,
                        start: start,
                        limit: limit,
                        
                    },
                    success:  function(response){
                            if (response == "reachedMax"){
                                reachedMax = true;
                            }else{
                                start += limit;
                                $(".result").append(response);
                            }
                        }
                });
            
        }
    </script>
</body>

</html>