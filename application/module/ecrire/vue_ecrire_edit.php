     <?php checkAllow(1);?>
    <form method="post" action="<?=hlien("ecrire","save")?>">
		<input type="hidden" name="ecr_membres" id="ecr_membres" value="<?= $id ?>" />
		
                        <div class='form-group'>
                            <label for='ecr_tounes'>Ecr_tounes</label>
                            <input id='ecr_tounes' name='ecr_tounes' type='number' size='80' value='<?=$ecr_tounes?>'  class='form-control' />
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              