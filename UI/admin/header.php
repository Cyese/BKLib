<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="/UI/css/style.css">
</head>
<style>
    .boxcenter{
    width: 70%;
    margin: 0 auto;
}
.row{
    float:left;
    width: 100%;
}
.mb{
    margin-bottom: 30px;

}
.demo{
    background-color: antiquewhite;
    min-height: 100px;
}
.header{
    background-color: aquamarine;
    border: 1px #090 solid;
    font-size: 1vw;
    border-radius: 5px;
}
.header h1{
    margin: 10px 20px;
}
.menu {
    background-color: black;
    color: #ccc;
    border-radius: 5px;
}
.menu ul{
    padding: 0 15px;
    
}
.menu ul li{
    list-style-type:none ;
    display: inline;
    padding: 0px 15px;
}
.menu ul li a{
    color: #ccc;
    text-decoration: none;
    transition: 0.5s ;
}
.menu ul li a:hover{
    color: white;
    font-size: 1vw;
}
.mb20{
    margin: 5px;
}
/* ADMIN */
.headeradmin{
    background-color:#EEE;
    border: 1px #CCC solid;
    color: #666;
    
    border-radius: 5px;
    padding: 10px, 20px;

}
.headeradmin h1{
    font-size: 2vw;
    padding: 5px;
    margin: 5px;
}
.frmtitle{
    background-color:#EEE;
    border: 1px #CCC solid;
    color: #666;
    
    border-radius: 5px;
    padding: 10px, 20px;
}
.frmcontent h1{
    font-size: 2vw;
    padding: 5px;
    margin: 5px;
}
.frmcontent{
    padding: 20px 0px;
    
}
.frmcontent input[type="text"]{
    width: 1040px;
    border: 1px #ccc solid;
    padding: 5px 10px;
    border-radius: 5px;
}
.frmcontent input[type="submit"]
.frmcontent input[type="reset"]
.frmcontent input[type="button"]
{
    border-radius: 5px;
    padding: 5px 10px;
    background-color: white;
    border: 1px #ccc solid;
}
.frmcontent input[type="submit"]:hover
.frmcontent input[type="button"]:hover
{
    background-color: #ccc;
}
.frmdsloai table{
    width: 100%;
    border-collapse: collapse;
    
}
.frmdsloai table th:nth-child(1){
    width: 5%;
    padding: 20px;
    background-color: #ccc;
}

.frmdsloai table th:nth-child(2){
    width: 10%;
    background-color: #ccc;
}

.frmdsloai table th:nth-child(3){
    width: 15%;
    background-color: #ccc;
}

.frmdsloai table th:nth-child(4){
    width: 40%;
    background-color: #ccc;
}
.frmdsloai table th:nth-child(5){
    width: 10%;
    background-color: #ccc;
}
.frmdsloai table th:nth-child(6){
    width: 20%;
    background-color: #ccc;
}
.frmdsloai table td{
    padding: 10px 20px;
    border: 1px #999 solid;

}
</style>
<body>
    <div class="boxcenter">
        <div class="row mb headeradmin">
            <h1>Admin</h1>
        </div>
        <div class="row mb menu">
            <ul>
                <li><a href="index.php" class="" id="">Trang chủ</a></li>
                <li><a href="index.php?act=adddm" class="" id="">Danh mục</a></li>
                <li><a href="index.php?act=addsp" class="" id="">Hàng hóa</a></li>
                <!-- <li><a href="index.php?act=thongke" class="" id="">Thống kê </a></li> -->
            </ul>
        </div>