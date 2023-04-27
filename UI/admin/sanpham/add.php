<div class="row">
    <div class="row frmtitle">
        <h1>THÊM MỚI SÁCH</h1>
    </div>
    
    <div class="row frmcontent">
        <form action="index.php?act=addsp" , method="post" enctype="multipart/form-data">
            <div class="row mb20">
                Danh mục sách
                <select name="iddm" id="">
                    <?php
                    foreach ($listdanhmuc as $danhmuc) {
                        extract($danhmuc);
                        echo "<option value='" . $id . "'>" . $name . "</option>";
                    }
                    ?>
                </select>
            </div>

            <div class="row mb20">
                Tên sách
                <input type="text" name="tensp">
            </div>

            <div class="row mb20">
                Giá
                <input type="text" name="giasp">
            </div>

            <div class="row mb20">
                Hình
                <input type="file" name="hinhsp">
            </div>


            <div class="row mb20">
                <input type="submit" name="themmoi" value="THÊM MỚI">
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