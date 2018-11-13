<html>
<head>
<meta charset= "utf-8">
	<title> Ручной ввод данных заказчика
	</title>
	<a href="main.php"><img src="emblems.png" alt="Яндекс тааакси"></a><br><br><br>

</head>
<body>
<H2>Новый заказ:</H2>
<form action = "add.php" method = "POST">
Имя заказчика:<br/>
<input type = "text" name ="Client"><br/>
      Телефон:   <br/>   
<input type = "Number" name ="Telephone"><br/>
 Откуда заказ: <br/>
<input type = "text" name ="Whence"><br/>
         Куда:  <br/>      
<input type = "text" name ="Were"><br/><br/>

<input type = "submit" name= "add" value="Оформить заказ">
</form>

<?php

$user = "root";
$pass = "";
$dsn = "mysql:host=localhost;dbname=my_db;charset=utf8";
$opt = array(
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
);
$pdo = new PDO($dsn, $user, $pass, $opt);

if (isset($_POST['add']))
{

$Client = strip_tags(trim($_POST['Client']));
$Telephone = strip_tags(trim($_POST['Telephone']));
$Whence = strip_tags(trim($_POST['Whence']));
$Were = strip_tags(trim($_POST['Were']));

if($pdo){
 
    $stmt = $pdo->query(" INSERT INTO Taxa (Client, Telephone, Whence, Were) 
	                    VALUES ('$Client', $Telephone, '$Whence', '$Were') ");
}

echo(" Заказ оформлен!");

}

?>
<br><br><a href="main.php">Вернуться к базе заказов</a>
</body>

</html>