<?php
    if(is_array($dm)){
        extract($dm);
    }
?>
<div class="row">
            <div class="row frmtitle">
                <h1>CẬP NHẬP LẠI SÁCH</h1>
            </div>
            <div class="row frmcontent">
                <form action="index.php?act=updatedm" , method="post">
                    <div class="row mb20">
                        Mã loại
                        <input type="text" name="maloai" >
                    </div>

                    <div class="row mb20">
                        Tên loại
                    <input type="text" name="tenloai" value="<?php if(isset($name)&&($name!="")) echo $name;?>">
                    </div>

                    <div class="row mb20">
                        <input type="hidden" name = "id" value= "<?php if(isset($id)&&($id >0)) echo $id;?>">
                        <input type="submit" name = "capnhap" value="CẬP NHẬP">
                        <input type="reset" value="NHẬP LẠI">
                        <a href="index.php?act=listdm">
                            <input type="button" value="DANH SÁCH">
                        </a>
                    </div>
                    <?php
                        if(isset($thongbao)&&($thongbao != "")) echo $thongbao;
                        
                    ?>


                </form>
            </div>