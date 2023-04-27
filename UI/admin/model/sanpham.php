<?php

function insert_sanpham($tensp,$giasp,$img,$iddm){
    $sql="insert into sanpham(name,price,img,iddm) values('$tensp','$giasp','$img','$iddm')";
    pdo_execute($sql);
}

function delete_sanpham($id){
    $sql = "delete from sanpham where id=".$id;
   pdo_execute($sql);
}

function load_all_sanpham($kyw, $iddm){
    $sql = "select * from sanpham where 1";
    if($kyw != ""){
        $sql.=" and name like '%".$kyw."%'";
    }
    if($iddm > 0){
        $sql.= " and iddm ='".$iddm."'";
    }
    $sql.=" order by id desc";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

function load_all_sanpham_home(){
    $sql = "select * from sanpham where 1 order by id desc limit 0,10";

    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

function load_one_sanpham($id){
    $sql = "select  * from sanpham where id=".$id;
     $dm = pdo_query_one($sql);
     return $dm;
}

function update_sanpham($id,$iddm, $tensp, $giasp, $filename){
    if($filename != ""){
        $sql="update sanpham set iddm='".$iddm."', name='".$tensp."', price='".$giasp."', img='".$filename."',where id=".$id;
    }
     
    else{
        $sql="update sanpham set iddm='".$iddm."', name='".$tensp."', price='".$giasp."',where id=".$id;
    }
    
    pdo_execute($sql);
}
