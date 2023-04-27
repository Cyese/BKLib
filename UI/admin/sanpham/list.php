<div class="row ">
    <div class="row frmtitle">
        <h1>DANH SÁCH LOẠI SÁCH</h1>
    </div>
    <form action="index.php?act=listsp" , method="post">
        <input type="text" name="kyw">
        <select name="iddm" >
            <option value="0" , selected>Tất cả</option>
            <?php
            foreach ($listdanhmuc as $danhmuc) {
                extract($danhmuc);
                echo "<option value='" . $id . "'>" . $name . "</option>";
            }
            ?>
        </select>

        <input type="submit" name="listok" value="Okey">
    </form>
    <div class="row frmcontent">
        <form action="#" , method="post">
            <div class="row mb20 frmdsloai">

                <table>
                    <tr>
                        <th></th>
                        <th>MÃ SÁCH</th>
                        <th>TÊN SÁCH</th>
                        <th>GIÁ</th>
                        <th>HÌNH</th>
                        <th></th>
                    </tr>
                    <?php
                    foreach ($listsanpham as $sanpham) {
                        extract($sanpham);
                        $suasp = "index.php?act=suasp&id=" . $id;
                        $xoasp = "index.php?act=xoasp&id=" . $id;
                        $imgpath = "../upload".$img;
                        if (is_file($imgpath)) {
                            $hinhsp = "<img src='" . $imgpath . "' height= '80px'>";
                        } else {
                            $hinhsp = "no photo";
                        }

                        echo '
                                        <tr>
                                            <td><input type="checkbox" name = "" id =""></td>
                                            <td>' . $id . '</td>
                                            <td>' . $name . '</td>
                                            <td>' . $price . '</td>
                                            <td>' . $hinhsp . '</td>
                                            <td>
                                                <a href="' . $suasp . '" class="">
                                                    <input type="button" value = "Sửa"> 
                                                </a>          
                                                <a href="' . $xoasp . '" class="">
                                                    <input type="button" value = "Xóa"> 
                                                </a>
                                            </td>
                                        </tr>';
                    }
                    ?>

                </table>
            </div>
            <div class="row mb20">
                <input type="submit" value="CHỌN TẤT CẢ">
                <input type="reset" value="BỎ CHỌN TẤT CẢ">
                <input type="button" value="XÓA CÁC MỤC ĐÃ CHỌN">
                <a href="index.php?act=addsp">
                    <input type="button" value="NHẬP THÊM">
                </a>
            </div>
        </form>
    </div>
</div>