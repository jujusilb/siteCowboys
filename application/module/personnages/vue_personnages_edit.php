     <?php checkAllow(1);?>
    <form method="post" action="<?=hlien("personnages","save")?>">
		<input type="hidden" name="per_id" id="per_id" value="<?= $id ?>" />
		
                        <div class='form-group'>
                            <label for='per_prenom'>Prénom</label>
                            <input id='per_prenom' name='per_prenom' type='text' size='80' value='<?=$per_prenom?>'  class='form-control' />
                        </div>
                        <div class='form-group'>
                            <label for='per_nom'>Nom</label>
                            <input id='per_nom' name='per_nom' type='text' size='80' value='<?=$per_nom?>'  class='form-control' />
                        </div>
                        <div class='form-group'>
                            <label for='per_bio'>Biographie</label>
                            <input id='per_bio' name='per_bio' type='text' size='80' value='<?=$per_bio?>'  class='form-control' />
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              