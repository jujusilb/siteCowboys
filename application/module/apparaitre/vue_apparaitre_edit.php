     <?php checkAllow(1);?>
    <form method="post" action="<?=hlien("apparaitre","save")?>">
		<input type="hidden" name="app_personnages" id="app_personnages" value="<?= $id ?>" />
		
                        <div class='form-group'>
                            <label for='app_tounes'>App_tounes</label>
                            <input id='app_tounes' name='app_tounes' type='number' size='80' value='<?=$app_tounes?>'  class='form-control' />
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              