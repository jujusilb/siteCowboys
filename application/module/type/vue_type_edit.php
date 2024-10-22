     <?php checkAllow(1);?>
    <form method="post" action="<?=hlien("type","save")?>">
		<input type="hidden" name="typ_id" id="typ_id" value="<?= $id ?>" />
		
                        <div class='form-group'>
                            <label for='typ_libelle'>Typ_libelle</label>
                            <input id='typ_libelle' name='typ_libelle' type='text' size='80' value='<?=$typ_libelle?>'  class='form-control' />
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              