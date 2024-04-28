<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Letadla</title>
</head>
<body>
    <h1>Letadla</h1>
    <a href="<?php echo base_url('data/create');?>">Přidat nové letadlo</a>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Název</th>
                <th>Popis</th>
                <th>Akce</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($letadla as $letadlo):?>
                <tr>
                    <td><?php echo $letadlo->id;?></td>
                    <td><?php echo $letadlo->name;?></td>
                    <td><?php echo $letadlo->description;?></td>
                    <td>
                        <a href="<?php echo base_url('data/show/'. $letadlo->id);?>">Zobrazit</a>
                        <a href="<?php echo base_url('data/edit/'. $letadlo->id);?>">Upravit</a>
                        <a href="<?php echo base_url('data/destroy/'. $letadlo->id);?>" onclick="return confirm('Opravdu smazat?')">Smazat</a>
                    </td>
                </tr>
            <?php endforeach;?>
        </tbody>
    </table>
</body>
</html>