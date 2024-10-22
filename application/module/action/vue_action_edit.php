    <form method="post" action="<?=hlien("action","save")?>">
		<input type="hidden" name="act_id" id="act_id" value="<?= $id ?>" />
		
                        <div class='form-group'>
                            <label for='act_membres'>Act_membres</label>
                            <input id='act_membres' name='act_membres' type='number' size='80' value='<?=$act_membres?>'  class='form-control' />
                        </div>
                        <div class='form-group'>
                            <label for='act_tounes'>Act_tounes</label>
                            <input id='act_tounes' name='act_tounes' type='number' size='80' value='<?=$act_tounes?>'  class='form-control' />
                        </div>
                        <div class='form-group'>
                            <label for='act_categorie'>Act_categorie</label>
                            <input id='act_categorie' name='act_categorie' type='text' size='80' value='<?=$act_categorie?>'  class='form-control' />
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              