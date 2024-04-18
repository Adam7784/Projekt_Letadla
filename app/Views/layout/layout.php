<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <?=$this->include('layout/assets'); ?>

</head>
<body>
    <div class="container">
        <div>
            <a class="active" href="login">Přihlášení</a>
            <a href="registrace">Registrace</a>
        </div>
        <?= $this->renderSection('content'); ?>
    </div>
</body>
</html>