    <form method="post" action="<?=hlien("albums","save")?>">
        <?php checkAllow(1);?>
		<input type="hidden" name="alb_id" id="alb_id" value="<?= $id ?>" />
                        <div class='form-group'>
                            <label for='alb_pochette'>pochette</label>
                            <img src="<?=$alb_pochette?>" width="50px" />
                        </div>
                        <div class='form-group'>
                            <label for='alb_libelle'>libelle</label>
                            <input id='alb_libelle' name='alb_libelle' type='text' size='80' value='<?=$alb_libelle?>'  class='form-control' />
                        </div>
                        <div class='form-group'>
                            <label for='alb_annee'>année</label>
                            <input id='alb_annee' name='alb_annee' type='number' size='80' value='<?=$alb_annee?>'  class='form-control' />
                        </div>

                        <div class='form-group'>
                            <label for='alb_piste'>nb de pistes</label>
                            <input id='alb_piste' name='alb_piste' type='number' size='80' value='<?=$alb_piste?>'  class='form-control' />
                        </div>
                        <div class='form-group'>
                            <label for='alb_type'>type</label>
                            <select id='alb_type' name='alb_type' class='form-select'><?=Table::HTMLselect('select * from type', 'typ_id', 'typ_libelle', $alb_type)?></select>
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              