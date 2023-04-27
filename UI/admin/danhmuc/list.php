<div class="row ">
            <div class="row frmtitle">
                <h1>DANH SÁCH LOẠI SÁCH</h1>
            </div>
            <div class="row frmcontent">
                <form action="#" , method="post">
                    <div class="row mb20 frmdsloai">
                        <table>
                            <tr>
                                <th></th>
                                <th>MÃ LOẠI</th>
                                <th>TÊN LOẠI</th>
                                <th></th>
                            </tr>
                            <?php
                                foreach($listdanhmuc as $danhmuc){
                                    extract($danhmuc);
                                    $suadm = "index.php?act=suadm&id=".$id;
                                    $xoadm = "index.php?act=xoadm&id=".$id;
                                    echo '
                                        <tr>
                                            <td><input type="checkbox" name = "" id =""></td>
                                            <td>'.$id.'</td>
                                            <td>'.$name.'</td>
                                            <td>
                                                <a href="'.$suadm.'" class="">
                                                    <input type="button" value = "Sửa"> 
                                                </a>          
                                                <a href="'.$xoadm.'" class="">
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
                        <a href="index.php?act=adddm">
                            <input type="button" value="NHẬP THÊM">
                        </a>
                    </div>
                </form>
            </div>
        </div>