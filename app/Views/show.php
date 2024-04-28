<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zobrazit letadlo</title>
</head>
<body>
    <h1>Zobrazit letadlo</h1>
    <p>ID: <?php echo $letadlo->id;?></p>
    <p>Název: <?php echo $letadlo->name;?></p>
    <p>Popis: <?php echo $letadlo->description;?></p>
    <a href="<?php echo base_url('data');?>">Zpět na seznam letadel</a>
</body>
</html>