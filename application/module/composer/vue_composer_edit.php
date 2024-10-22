     <?php checkAllow(1);?>
    <form method="post" action="<?=hlien("composer","save")?>">
		<input type="hidden" name="com_membres" id="com_membres" value="<?= $id ?>" />
		
                        <div class='form-group'>
                            <label for='com_tounes'>Com_tounes</label>
                            <input id='com_tounes' name='com_tounes' type='number' size='80' value='<?=$com_tounes?>'  class='form-control' />
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              