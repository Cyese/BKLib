<?php

function insert_danhmuc($tenloai){
    $sql="insert into danhmuc(name) values('$tenloai')";
    pdo_execute($sql);
}

function delete_danhmuc($id){
    $sql = "delete from danhmuc where id=".$id;
   pdo_execute($sql);
}

function load_all(){
    $sql = "select * from danhmuc order by id desc";
    $listdanhmuc = pdo_query($sql);
    return $listdanhmuc;
}

function load_one($id){
    $sql = "select  * from danhmuc where id=".$id;
     $dm = pdo_query_one($sql);
     return $dm;
}

function update($tenloai, $id){
    $sql="update danhmuc set name='".$tenloai."'where id=".$id;
    pdo_execute($sql);
}
?>
