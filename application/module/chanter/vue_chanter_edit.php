     <?php checkAllow(1);?>
    <form method="post" action="<?=hlien("chanter","save")?>">
		<input type="hidden" name="cha_membres" id="cha_membres" value="<?= $id ?>" />
		
                        <div class='form-group'>
                            <label for='cha_tounes'>Cha_tounes</label>
                            <input id='cha_tounes' name='cha_tounes' type='number' size='80' value='<?=$cha_tounes?>'  class='form-control' />
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              