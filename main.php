<!DOCTYPE html>
<html>
<head>
<meta charset= "utf-8">
	<title> Сервис по обработке заказов такси
	</title>
</head>
<body>
<a href="main.php"><img src="emblems.png" alt="Яндекс тааакси"></a> <br><br><br>
</body>
<a href="add.php">Ввести заказ вручную</a><br><br><br>
</html>
 
 <?php
$user = "root";
$pass = "";
$dsn = "mysql:host=localhost;dbname=my_db;charset=utf8";
$opt = array(
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
);
$pdo = new PDO($dsn, $user, $pass, $opt);
if($pdo){
 
    $stmt = $pdo->query(" SELECT * FROM Taxa ORDER BY identifier DESC");
    $result = $stmt->fetchALL();
    }
else{
    echo 'NO';
}  
?>

 <table border="1">
 
   <tr>
    <th>№ заказа</th>
    <th>Имя клиента</th>
    <th>Телефон</th>
    <th>Откуда</th>
     <th>Куда</th>
     <th>Статус поездки</th>
   </tr>
 <?php foreach ($result as $row) {?>
   <tr><td><?php echo $row ['identifier'];?></td><td><?php echo $row ['Client'];?></td><td><?php echo $row ['Telephone'];?></td><td><?php echo $row ['Whence'];?></td><td><?php echo $row ['Were'];?></td><td><?php echo $row ['Status'];?></td></tr> 
<?php } ?>

<?php
$stmt-> execute();
echo $_GET['Client'];

?>