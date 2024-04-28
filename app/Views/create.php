<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Přidat letadlo</title>
</head>
<body>
    <h1>Přidat letadlo</h1>
    <form action="<?php echo base_url('data/store');?>" method="post">
        <label for="name">Název:</label>
        <input type="text" name="name" id="name" required>
        <br>
        <label for="description">Popis:</label>
        <textarea name="description" id="description" required></textarea>
        <br>
        <button type="submit">Přidat</button>
    </form>
</body>
</html>