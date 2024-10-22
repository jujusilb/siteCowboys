<?php
function debug($array, $titre = "demandé")
{
?>
    <style>
        .debug {
            border: 1px solid black;
            background: linear-gradient(to bottom right, #F00, #FFF, #00F);
        }
    </style>
    <details>
        <summary class="debug">
            contenu du tableau <?= $titre ?> :
        </summary>
        <pre>
            <?php print_r($array); ?>
        </pre>
    </details>
<?php
}