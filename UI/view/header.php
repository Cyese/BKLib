<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>TESTING</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flat-ui/2.3.0/css/flat-ui.min.css"
    integrity="sha512-6f7HT84a/AplPkpSRSKWqbseRTG4aRrhadjZezYQ0oVk/B+nm/US5KzQkyyOyh0Mn9cyDdChRdS9qaxJRHayww=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="./css/main.css" />
  <link rel="stylesheet" href="./css/base.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;500&display=swap" rel="stylesheet" />
  <!-- bootstrap  -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous" />
</head>
<style>
  
</style>
<body>
  <div class="main">
    <!-- Header Navigation -->
    <header class="header__area">
      <div class="grid">
        <div class="header__navbar__container">
          <!-- Icon De tro ve trang chu -->
          <div class="col1" , href="">
            <div class="header__logo-img">
              <a href="./index.php" class="">
                <img class="hcmut__logo" src="./img/HCMUT_official_logo.png" alt="hcmut_logo" />
              </a>
            </div>

            <div class="header__logo-text">
              <div class="text">Thư viện</div>
            </div>
          </div>
          <!-- Menu Don Gian -->
          <div class="col2">
            <div class="header__menu">
              <ul class="nav">
                <!-- Tro ve trang chu -->
                <li class="nav_item">
                  <a href="./index.php" class="nav_item__link nav_item__homepage">Trang chủ</a>
                </li>

                <!-- Gioi thieu de tai -->
                <li class="nav_item">
                  <a href="" class="nav_item__link nav_item__introduce" data-toggle="modal"
                    data-target="#exampleModal2">Giới thiệu</a>
                </li>

                <!-- Lien he nhom truong -->
                <li class="nav_item">
                  <a href="" class="nav_item__link nav_item__contact" data-toggle="modal"
                    data-target="#exampleModal3">Liên hệ</a>

                </li>
              </ul>
            </div>
          </div>
          <!-- Cac chuc nang co ban -->
          <div class="col3">
            <div class="header__person">
              <ul class="Person__list">
                <!-- Thao tac dang nhap -->
                <li class="Person-icon__Person">
                  <!-- <button class="btn"><i class="fa fa-home"></i></button> -->
                  <button onclick="document.getElementById('id01').style.display='flex'" ,
                    class="Person-icon__Person-btn">
                    <i class="icon-img fa-solid fa-person"></i>
                  </button>
                  <!-- <i class="fa-solid fa-person"></i> -->
                </li>
                <!-- Kiem tra gio hang -->
                <li class="Person-icon__Shopping">
                  <button class="Person-icon__Person-btn">
                    <i class="icon-img fa-solid fa-cart-shopping"></i>
                  </button>
                  <!-- <i class="fa-solid fa-cart-shopping"></i> -->
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- Nav -->
    <!-- Back Home Page -->

    <!-- Back Introduce Page -->
    <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"
      style="overflow: hidden;">
      <div class="modal-dialog">

        <div class="modal__overlay-introduce">
          <div class="modal__body-introduce">
            <div class="introduce-form">
              <div class="introduce-form__img">
                
              </div>
              <div class="introduce-form__text">
                <h3>Giới thiệu về trang web</h3>
                <div class="introduce-form__text_paragraph">

                </div>
              </div>

            </div>
          </div>
        </div>



      </div>
    </div>
    <!-- <div class="modal">
            <div class="modal__overlay-introduce">
                <div class="modal__body-introduce">
                    <div class="introduce-form">
                        <div class="introduce-form__img">
                            
                        </div>
                        <div class="introduce-form__text">
                            <h3>Giới thiệu về trang web</h3>
                            <h4> Web được tạo ra là sản phẩm của nhóm xx</h4>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div> -->
    <!-- Back Contact Page -->
    <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"
      style="overflow: hidden;">
      <div class="modal-dialog">

        <div class="modal-body">
          <div class="modal__overlay-contact">
            <div class="modal__body-contact">
              <div class="contact-form">
                <div class="contact-form__container">
                  <div class="contact_text">
                    <h3>THÀNH VIÊN TRONG NHÓM</h3>
                  </div>
                  <div class="people">
                    <div class="people1__img">
                      <img src="view/img/pngegg.png" alt="", style="height: 150px;
                        width: 150px;
                        background-repeat: no-repeat;
                        background-size: contain;"
                      >
                    </div>
                    <div class="people1_contact">
                      <ul class="people_list_item"></ul>
                      <li>
                        <i class="fa-solid fa-user"></i>
                        Nguyễn Trương Phước Thọ
                      </li>
                      <li>
                        <i class="fa-sharp fa-solid fa-id-badge"></i>
                        MSSV 2114913
                      </li>
                      <li>
                        <i class="fa-solid fa-envelope"></i>
                        tho.nguyen1504@hcmut.edu.vn
                      </li>
                      <li class="link__fb">
                        <a href="https://www.facebook.com/phuocthoo" class="link__fb">
                          <i class="fa-brands fa-facebook"></i>
                          Phước Thọ
                        </a>
                      </li>
                    </div>
                  </div>

                  <div class="people">
                    <div class="people2_contact">
                      <ul class="people_list_item"></ul>
                      <li>
                        <i class="fa-solid fa-user"></i>
                        Lâm Nguyễn Quang Tuệ
                      </li>
                      <li>
                        <i class="fa-sharp fa-solid fa-id-badge"></i>
                        MSSV 2112592
                      </li>
                      <li>
                        <i class="fa-solid fa-envelope"></i>
                        tue.lamkhmtk21@hcmut.edu.vn
                      </li>
                      <li class="link__fb">
                        <a href="https://www.facebook.com/profile.php?id=100008627557772" class="link__fb">
                          <i class="fa-brands fa-facebook"></i>
                          Tuệ Lâm
                        </a>
                      </li>
                    </div>
                    <div class="people2__img">
                    <img src="view/img/pngegg (2).png" alt="", style="height: 150px;
                        width: 150px;
                        background-repeat: no-repeat;
                        background-size: contain;"
                      >
                    </div>
                  </div>

                  <div class="people">
                    <div class="people3__img">
                    <img src="view/img/pngegg (3).png" alt="", style="height: 150px;
                        width: 150px;
                        background-repeat: no-repeat;
                        background-size: contain;"
                      >
                    </div>
                    <div class="people3_contact">
                      <ul class="people_list_item"></ul>
                      <li>
                        <i class="fa-solid fa-user"></i>
                        Nguyễn Nhật Đăng
                      </li>
                      <li>
                        <i class="fa-sharp fa-solid fa-id-badge"></i>
                        MSSV 2110123
                      </li>
                      <li>
                        <i class="fa-solid fa-envelope"></i>
                        dang.nguyen@hcmut.edu.vn
                      </li>
                      <li>
                        <a href="https://www.facebook.com/nndangbo" class="link__fb">
                          <i class="fa-brands fa-facebook"></i>
                          Đăng Nguyễn
                        </a>
                      </li>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>


      </div>
    </div>
  </div>




  

  <!-- REGISTER -->
  <div id="id01" class="modal1">
    <span onclick="document.getElementById('id01').style.display='none'" class="close"
      title="Close Modal">&times;</span>

    <div class="modal__body">
      <div class="auth-form">
        <div class="auth-form__header">
          <h2 class="auth-form__heading">ĐĂNG KÝ</h2>
          <!-- <span class="auth-form__switch-btn">Đăng nhập</span> -->
          <button class="auth-form__switch-btn" , onclick="swaptab('id02')">
            Đăng nhập</button>
        </div>
        <form class="modal-content" action="" , style="border: none;">
          <div class="container">

            <div class="auth-form__container">

              <div class="auth-form__form">
                <div class="auth-form__group">
                  <input type="text" class="auth-form__input" , placeholder="Nhập tài khoản">
                </div>

                <div class="auth-form__group">
                  <input type="password" class="auth-form__input" , placeholder="Nhập mật khẩu">
                </div>

                <div class="auth-form__group">
                  <input type="password" class="auth-form__input" , placeholder="Nhập lại mật khẩu">
                </div>

              </div>
            </div>
            <div class="clearfix auth-form__controls">
              <button type="button" onclick="document.getElementById('id01').style.display='none'"
                class="cancelbtn btn auth-form__controls-back">TRỞ LẠI</button>
              <button type="submit" class="signupbtn btn btn--primary">ĐĂNG KÝ</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <script>
    // Get the modal
    var modal = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }

    function swaptab(id) {
      var tabcontent, tablink;
      var i;
      tabcontent = document.getElementsByClassName("modal1");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }

      // var tabcontent1 = document.getElementById('id01');
      // tabcontent1.style.display = "none";
      var tabcontent2 = document.getElementById(id);
      tabcontent2.style.display = "flex";

    }
  </script>

  <!-- Login -->
  <div id="id02" class="modal1">
    <span onclick="document.getElementById('id02').style.display='none'" class="close"
      title="Close Modal">&times;</span>

    <div class="modal__body">
      <div class="auth-form">
        <div class="auth-form__header">
          <h3 class="auth-form__heading">Đăng nhập</h3>
          <!-- <span class="auth-form__switch-btn">Đăng ký</span> -->
          <button class="auth-form__switch-btn" , onclick="swaptab('id01')">
            Đăng ký</button>
        </div>
        <form class="modal-content" action="https://www.google.com.vn/?hl=vi" style="border: none ;">
          <div class="container">

            <div class="auth-form__container">

              <div class="auth-form__form">
                <div class="auth-form__group">
                  <input type="text" class="auth-form__input" , placeholder="Nhập tài khoản">
                </div>

                <div class="auth-form__group">
                  <input type="password" class="auth-form__input" , placeholder="Nhập mật khẩu">
                </div>

              </div>

            </div>
            <div class="clearfix auth-form__controls">
              <button type="button" onclick="document.getElementById('id02').style.display='none'"
                class="cancelbtn btn auth-form__controls-back">TRỞ LẠI</button>
              <button type="submit" class="signupbtn btn btn--primary" >
                <a href="https://www.google.com.vn/?hl=vi"></a>
                ĐĂNG NHẬP

              </button>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
  
  </div>
  <script>
    // Get the modal
    var modal = document.getElementById('id02');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }

  </script>
  </div>
