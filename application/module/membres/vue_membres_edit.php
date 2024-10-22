     <?php checkAllow(1);?>
    <form method="post" action="<?=hlien("membres","save")?>">
		<input type="hidden" name="mem_id" id="mem_id" value="<?= $id ?>" />
		 <input type="hidden" name="mem_photo" id="mem_photo" value="" />
		 <div class='form-group'>
                            <label for='mem_photo'>Photo</label>
                            <img src='<?=$mem_photo?>' width="150px" />
                        </div>
                        <div class='form-group'>
                            <label for='mem_prenom'>Prénom</label>
                            <input id='mem_prenom' name='mem_prenom' type='text' size='80' value='<?=$mem_prenom?>'  class='form-control' />
                        </div>
                        <div class='form-group'>
                            <label for='mem_nom'>Nom</label>
                            <input id='mem_nom' name='mem_nom' type='text' size='80' value='<?=$mem_nom?>'  class='form-control' />
                        </div>
                       
                        <div class='form-group'>
                            <label for='mem_naissance'>Naissance</label>
                            <input id='mem_naissance' name='mem_naissance' type='date' size='80' value='<?=$mem_naissance?>'  class='form-control' />
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              