<div class="row">
            <div class="row frmtitle">
                <h1>THÊM MỚI LOẠI SÁCH</h1>
            </div>
            <div class="row frmcontent">
                <form action="index.php?act=adddm" , method="post">
                    <div class="row mb20">
                        Mã loại
                        <input type="text" name="maloai" >
                    </div>

                    <div class="row mb20">
                        Tên loại
                        <input type="text" name="tenloai">
                    </div>

                    <div class="row mb20">
                        <input type="submit" name = "themmoi" value="THÊM MỚI">
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