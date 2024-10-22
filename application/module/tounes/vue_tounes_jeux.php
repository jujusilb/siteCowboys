<style>
    .game{
        display:flex;
        justify-content:space-around;
        border:1px solid green;
        flex-wrap:wrap;
    }
</style>

<?php

debug($data, "data");
?>
<h1>Bievenu dans le jeu</h1>
<h3>En construction</h3>
<?php
shuffle($data);
$jeu=array_chunk($data, 11);
debug($jeu, "jeu");?>
<div class="game">
    <?php for ($i=0;$i<count($jeu);$i++){?>
        <div>
            <br>
            division <?=$i?><br>
            <?php for ($j=0;$j<count($jeu[$i]);$j++){ ?>
                -<?=$data[($i*count($jeu[$i]))+$j]["tou_libelle"]?><br>
            <?php } ?>
        </div>

<?php } ?>
</div>