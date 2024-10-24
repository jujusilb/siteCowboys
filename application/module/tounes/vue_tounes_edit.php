     <?php checkAllow(1);?>
    <form id="form" method="post" action="<?= hlien("tounes", "save") ?>">
        <input type="hidden" name="tou_id" id="tou_id" value="<?= $id ?>" />


        <fieldset>
            <legend>TITRE</legend>
            <div class='form-group'>
                <label for='tou_libelle'>Titre</label>
                <input id='tou_libelle' name='tou_libelle' type='text' size='80' value='<?= $tou_libelle ?>' class='form-control' />
            </div>
        </fieldset>
        <?php if($id>0){ ?>
        <fieldset>
            <legend>creation</legend>
            <style>
                table td{
                    border:1px solid;
                    text-align:center;
                    padding:15px;
                }
            </style>
            <table>
                <tr id="membres">
                    
                    <td>MEMBRES</td>
                    <?php foreach ($listMembres as $list) {
                    extract($list); ?>
                    <td><img src="<?=$mem_photo?>" width=120px></td>
                <?php } ?>
                </tr
                <tr>
                <td>ECRITURE</td>
                <?php foreach ($listMembres as $list) {
                    extract($list);
                    $tab = [];
                    //debug($listEcrire);
                    if (!(in_array(($tou_id), $noEcrire))) {
                        for($i=0;$i<count($listEcrire[$tou_id]);$i++){
                            $tab[]=$listEcrire[$tou_id][$i][0];
                        }
                    }
                    if (in_array($mem_id, $tab)) {
                        $croix = "checked";
                    } else {
                        $croix = "";
                    }
                ?>
                <td><input type='checkbox' name='memAction[]' id='ecr_$mem_id' value='<?=$mem_id?>' <?=$croix?>></td>
                <?php } ?>
                </tr>
                <tr>
                    <td>COMPOSITION</td>
                    <?php foreach ($listMembres as $list) {
                    extract($list);
                    $tab = [];
                    if (!(in_array($tou_id, $noComposer))) {
                        for($i=0;$i<count($listComposer[$tou_id]);$i++){
                            $tab[]=$listComposer[$tou_id][$i][0];
                        }
                    }
                    if (in_array($mem_id, $tab)) {
                        $croix = "checked";
                    } else {
                        $croix = "";
                    } ?>
                    <td><input type='checkbox' name='memComposer[]' id='com_$mem_id' value='<?=$mem_id?>' <?=$croix?>></td>
                <?php } ?>
                </tr>
                <tr>
                    <td>CHANT</td>
                    <?php foreach ($listMembres as $list) {
                    extract($list);
                    $tab = [];
                    if (!(in_array($tou_id, $noChanter))) {
                        for($i=0;$i<count($listChanter[$tou_id]);$i++){
                            $tab[]=$listChanter[$tou_id][$i][0];
                        }
                    }
                    if (in_array($mem_id, $tab)) {
                        $croix = "checked";
                    } else {
                        $croix = "";
                    } ?>
                    <td><input type='checkbox' name='memChanter[]' id='cha_<?=$mem_id?>' value='<?=$mem_id?>' <?=$croix?>></td>
                    <?php } ?>
                </tr>
            </table>
        </fieldset>
        
        
        <fieldset>
            <legend>PERSONNAGES</legend>
            <div class='form-group'>
                <label for='idInputPersonnages'>Personnages</label>
                <div class="d-flex">
                    <input 
                    id='idInputPersonnages' 
                    data-pageId="<?=$id?>"
                    data-relation="apparatre" 
                    data-domparent="idResultPersonnages" 
                    data-table="personnages" 
                        type='text' size='20' />
                    <div id="idResultPersonnages" class="d-flex"></div>
                </div>
                <div id="idPersonnage" data-domparent="idPersonnage"></div>
            </div>
        </fieldset>
        
        <fieldset>
            <legend>ALBUM</legend>
            <div class='form-group'>
		<div class="container mt-5">
        		<div class="mb-3">
            			<label for="album-select" class="form-label">Choisir un album</label>
            			<select class="form-select" id="album-select" aria-label="Choisir un album">
                			<option value="" selected>Choisir un album</option>
                			<?php foreach ($listAlbums as $album) {
                    				echo "<option value='{$album['alb_id']}' data-cover='{$album['alb_pochette']}'>{$album['alb_libelle']}</option>";
                			} ?>
           			 </select>
        		</div>
       		<div class="album-list" id="album-list" style="display: flex; flex-wrap: wrap;">
            <?php if ($id>0){
            	foreach($listInclure[$id] as $inclure){
                	echo "<img src='$inclure[2]' width=120px>";
            	}
	    }?>
        </div>
    </div>

    <script>
    let form=document.getElementById("form")
        document.addEventListener('DOMContentLoaded', function() {
            let albumSelect = document.getElementById('album-select');
            let albumList = document.getElementById('album-list');

            albumSelect.addEventListener('change', function() {
                let selectedOption = albumSelect.options[albumSelect.selectedIndex];
                let albumId = selectedOption.value;
                let albumTitle = selectedOption.text;
                let albumCover = selectedOption.getAttribute('data-cover');
                albumList.innerHTML+="<input type='hidden' name='albumInclure[]' value='"+albumId+"'>"
                
                if (albumId) {
                    // Ajouter la pochette de l'album à la liste
                    let albumCoverDiv = document.createElement('div');
                    albumCoverDiv.className = 'album-cover';
                    albumCoverDiv.setAttribute('data-id', albumId);
                    albumCoverDiv.setAttribute('data-title', albumTitle);
                    albumCoverDiv.innerHTML = `<img src="${albumCover}" alt="${albumTitle}" class="img-thumbnail" style="width: 150px; height: 150px; margin: 10px; cursor: pointer;">`;
                    albumList.appendChild(albumCoverDiv);

                    // Retirer l'option du menu déroulant
                    albumSelect.remove(albumSelect.selectedIndex);
                }
            });

            albumList.addEventListener('click', function(event) {
               let target = event.target;
                if (target.tagName.toLowerCase() === 'img') {
                    let albumCoverDiv = target.parentElement;
                    let albumId = albumCoverDiv.getAttribute('data-id');
                    let albumTitle = albumCoverDiv.getAttribute('data-title');
                    let albumCover = target.getAttribute('src');

                    // Réajouter l'option au menu déroulant
                    var newOption = document.createElement('option');
                    newOption.value = albumId;
                    newOption.setAttribute('data-cover', albumCover);
                    newOption.textContent = albumTitle;
                    albumSelect.appendChild(newOption);

                    // Retirer la pochette de l'album de la liste
                    albumList.removeChild(albumCoverDiv);
                }
            });
        });
    </script>
            </div>
        </fieldset>
	<?php } ?>
        <input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
        <input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
    </form>
    <script>
        let inputChanter = document.getElementById("idInputChanter")
        let inputComposer = document.getElementById("idInputComposer")
        let inputEcrire = document.getElementById("idInputEcrire")
        let inputPersonnages = document.getElementById("idInputPersonnages")

        inputChanter.addEventListener("input", action)
        inputComposer.addEventListener("input", action)
        inputPersonnages.addEventListener("input", action)
        inputEcrire.addEventListener("input", action)

        async function action(e) {
            let clicked =e.target
            let domparent = document.getElementById(clicked.dataset.domparent)
            let relation = clicked.dataset.relation
            let table = clicked.dataset.table
            let pageId = clicked.dataset.pageId
            if (e.target.value.length > 2) {
                domparent.innerHTML = ""
                url = '<?= hlien("'+table+'", "find'+table+'") ?>&filtre=' + e.target.value
                console.log(url)
                let response = await fetch(url)
                let data = await response.json()
                for (let i = 0; i < data.length; i++) {
                    let memNom = data[i].nom
                    let memId=data[i].mem_id
                    let itemTMP = createDiv(pageId, domparent, table, relation, memId, memNom, "plus")
                    console.log(itemTMP)
                }
            }
        } 
        //function add()
        //url = '<?= hlien("'+table+'", "find'+table+'") ?>&filtre='+e.target.value
    </script>