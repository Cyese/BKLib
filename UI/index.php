<?php
    include "/xampp/htdocs/project/BKLib-main/UI/admin/model/danhmuc.php";
    include "/xampp/htdocs/project/BKLib-main/UI/admin/model/sanpham.php";
    include "/xampp/htdocs/project/BKLib-main/UI/admin/model/pdo.php";
    include "/xampp/htdocs/project/BKLib-main/global.php";
    include "view/header.php";
    $spnew = load_all_sanpham_home();
    $dsdm = load_all();
  
    if(isset($_GET['act']) && ($_GET['act'] != "")){
        $act = $_GET['act'];
        switch($act){
            case'sanpham':
                if(isset($_POST['kyw']) && ($_POST['kyw'] !=  "")){
                    $kyw = $_POST['kyw'];
                } else{
                    $kyw = "";
                }
                if(isset($_GET['iddm']) && ($_GET['iddm'] > 0)){
                    $iddm = $_GET['iddm'];
                    // $dssp = load_all_sanpham("", $iddm);
                    
                    // include "view/sanpham.php";
                }
                else{
                    // include "view/home.php";
                    $iddm = 0;
                }
                $dssp = load_all_sanpham($kyw, $iddm);
                include "view/sanpham.php";
                break;
               
                
            default:
                include "view/home.php";
                break;
    
        }
    }
    else      include "view/home.php";
        
    
       
        include "view/footer.php";
    
    
    
?>
