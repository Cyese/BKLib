<?php
    include "./model/pdo.php";
    include "header.php";
    include "./model/danhmuc.php";
    include "./model/sanpham.php";
    if(isset($_GET['act'])){
        $act = $_GET['act'];
        switch($act){
            case'adddm':
               
                if(isset($_POST['themmoi'])&&($_POST['themmoi'])){
                    $tenloai = $_POST['tenloai'];
                    insert_danhmuc($tenloai);
                    $thongbao = "Thêm thành công";
                }
                include "danhmuc/add.php";
                break;
            case'listdm':
                // $sql = "select * from danhmuc order by name";

                $listdanhmuc = load_all();
                include "danhmuc/list.php";
                break;
            case 'xoadm':
                if(isset($_GET['id']) && ($_GET['id'] > 0)){
                    delete_danhmuc($_GET['id']);
                }
                $listdanhmuc = load_all();
                include "danhmuc/list.php";
                break;
            case'suadm':
                if(isset($_GET['id']) && ($_GET['id'] > 0)){
                    
                    $dm = load_one($_GET['id']);
                }
                
                include "danhmuc/update.php";
                break;
            case 'updatedm':
                if(isset($_POST['capnhap'])&&($_POST['capnhap'])){
                    $tenloai = $_POST['tenloai'];
                    $id = $_POST['id'];
                    update($_POST['tenloai'],$_POST['id']);
                    $thongbao = "Cập nhập thành công";
                }
                $listdanhmuc = load_all();
                include "danhmuc/list.php";
                break;
            // San pham

            case'addsp':
               
                if(isset($_POST['themmoi'])&&($_POST['themmoi'])){
                    $iddm = $_POST['iddm'];
                    $tensp = $_POST['tensp'];
                    $giasp = $_POST['giasp'];
                    $filename = $_FILES['hinhsp']['name'];
                    $target_dir = "../upload";
                    $target_file = $target_dir . basename($_FILES["hinhsp"]["name"]);
                    if (move_uploaded_file($_FILES["hinhsp"]["tmp_name"], $target_file)) {
                        // echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";
                    } else {
                        echo "Sorry, there was an error uploading your file.";
                    }
                    insert_sanpham($tensp,$giasp,$filename,$iddm);
                    $thongbao = "Thêm thành công";
                }
                $listdanhmuc =load_all();
                include "sanpham/add.php";
                break;
            case'listsp':
                // $sql = "select * from sanpham order by name";
                if(isset($_POST['listok'])&&($_POST['listok'])){
                    $kyw = $_POST['kyw'];
                    $iddm = $_POST['iddm'];
                    
                }
                else{
                    $kyw = '';
                    $iddm = 0;   
                }
                $listdanhmuc = load_all();
                $listsanpham = load_all_sanpham($kyw, $iddm);
                include "sanpham/list.php";
                break;
            case 'xoasp':
                if(isset($_GET['id']) && ($_GET['id'] > 0)){
                    delete_sanpham($_GET['id']);
                }
                $listsanpham = load_all_sanpham("",0);
                include "sanpham/list.php";
                break;
            case'suasp':
                if(isset($_GET['id']) && ($_GET['id'] > 0)){
                    
                    $sanpham = load_one_sanpham($_GET['id']);
                }
                $listdanhmuc = load_all();
                include "sanpham/update.php";
                break;
            case 'updatesp':
                if(isset($_POST['capnhap'])&&($_POST['capnhap'])){
                    $id = $_POST['id'];
                    $iddm = $_POST['iddm'];
                    $tensp = $_POST['tensp'];
                    $giasp = $_POST['giasp'];
                    $filename = $_FILES['hinhsp']['name'];
                    $target_dir = "../upload";
                    $target_file = $target_dir . basename($_FILES["hinhsp"]["name"]);
                    if (move_uploaded_file($_FILES["hinhsp"]["tmp_name"], $target_file)) {
                        // echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";
                    } else {
                        echo "Sorry, there was an error uploading your file.";
                    }
                    update_sanpham($id,$iddm, $tensp, $giasp, $filename);
                    $thongbao = "Cập nhập thành công";
                }
                $listdanhmuc = load_all();
                $listsanpham = load_all_sanpham("",0);
                include "sanpham/list.php";
                break;



            /* */
            case 'thongke':
                include "thongke/thongkesp.php";
                break;
            default:
                include "home.php";
                break;
    
        }
    }else{
        include "home.php";
    }
    
    include  "footer.php";

?>