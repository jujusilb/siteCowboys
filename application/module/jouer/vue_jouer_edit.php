     <?php checkAllow(1);?>
    <form method="post" action="<?=hlien("jouer","save")?>">
		<input type="hidden" name="jou_membres" id="jou_membres" value="<?= $id ?>" />
		
                        <div class='form-group'>
                            <label for='jou_instruments'>Jou_instruments</label>
                            <input id='jou_instruments' name='jou_instruments' type='number' size='80' value='<?=$jou_instruments?>'  class='form-control' />
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              