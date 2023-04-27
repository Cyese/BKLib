<?php
if (is_array($sanpham)) {
    extract($sanpham);
}
$imgpath = "../upload" .$img;
if (is_file($imgpath)) {
    $hinhsp = "<img src='" . $imgpath . "' height= '80px'>";
} else {
    $hinhsp = "no photo";
}
?>
<div class="row">
    <div class="row frmtitle">
        <h1>CẬP NHẬP LẠI SÁCH</h1>
    </div>
    <div class="row frmcontent">
        <form action="index.php?act=updatesp" , method="post" enctype="multipart/form-data">
            <div class="row mb20">
                <!-- Mã sách
                <input type="text" name="masp"> -->
                <select name="iddm" id="">
                    <option value="<?=$iddm?>" , selected>Tất cả</option>
                    <?php
                    foreach ($listdanhmuc as $danhmuc) {
                        extract($danhmuc);
                        if($iddm==$id)
                        echo '<option value="'.$id.'" selected>'  . $name . '</option>';
                        else
                        echo '<option value="'.$id.'"> '.$name.'</option>';
                    }
                    ?>
                </select>
            </div>

            <div class="row mb20">
                Tên sách
                <input type="text" name="tensp" value="<?=$name ?>">
            </div>

            <div class="row mb20">
                Giá
                <input type="text" name="giasp" value="<?=$price ?>">
            </div>

            <div class="row mb20">
                Hình
                <input type="file" name="hinhsp">
                <?= $hinhsp ?>
            </div>


            <div class="row mb20">
                <input type="hidden" name="id" value="<?= $id ?>">
                <input type="submit" name="capnhap" value="CẬP NHẬP">
                <input type="reset" value="NHẬP LẠI">
                <a href="index.php?act=listsp">
                    <input type="button" value="DANH SÁCH">
                </a>
            </div>
            <?php
            if (isset($thongbao) && ($thongbao != "")) echo $thongbao;

            ?>


        </form>
    </div>