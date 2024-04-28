<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upravit letadlo</title>
</head>
<body>
    <h1>Upravit letadlo</h1>
    <form action="<?php echo base_url('data/update/'. $letadlo->id);?>" method="post">
        <label for="name">Název:</label>
        <input type="text" name="name" id="name" value="<?php echo $letadlo->name;?>" required>
        <br>
        <label for="description">Popis:</label>
        <textarea name="description" id="description" required><?php echo $letadlo->description;?></textarea>
        <br>
        <button type="submit">Upravit</button>
    </form>
</body>
</html>