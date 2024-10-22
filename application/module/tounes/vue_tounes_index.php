    <h2>Tounes</h2>
	<?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
		<p><a class="btn btn-primary" href="<?=hlien("tounes","edit","id",0)?>">Nouveau tounes</a></p>
	<?php } 
	echo count($data)." tounes disponibles !";
	?>
	<details>
        <summary>
    	    FILTRER
    	</summary>
	    <div id="filtre">
	        <form method="post" action="<?=hlien("tounes", "index")?>">
	            <table>
	                <?php
	                foreach($categorie as $key){ ?>
	                    <tr>
	                        <td><?=$key?> :</td>
	                        <?php 
	                        for($i=0;$i<count($listMembres);$i++){ ?>
	                            <td>
	                                <label for="<?=$key?><?=$listMembres[$i]["mem_id"]?>">
	                                    <img src="<?=$listMembres[$i]['mem_photo']?>" data-categorie="<?=$key?>" id="<?=$key?><?=$listMembres[$i]["mem_id"]?>" class="photoFiltre" width="80px">
	                                    <input type="checkbox" name="<?=$key?>[]" id="input<?=$key?><?=$listMembres[$i]["mem_id"]?>" value="<?=$listMembres[$i]["mem_id"]?>" style="display:none;">
	                                </label>
	               </td>
	               
	           <?php } ?>
	       </tr>
    	    <?php } ?>
    	 </table>
    	 <script>
            let listPhoto=document.querySelectorAll('.photoFiltre')
            for(let i=0;i<listPhoto.length;i++){
                listPhoto[i].addEventListener('click', clickage)
            }
            function clickage(e){
                let inputId = "input"+e.target.id
                console.log("etarger",e.target)
                console.log("inputID", inputId)
                let input = document.getElementById(inputId);
                input.checked = !input.checked
            }
        </script>
    	 <input type="submit" name="btSubmit">
    	 </form>
	    </div>
	</details>
	<a href="<?=hlien("tounes", "index")?>" style="display:inline-block; padding:3px; justify-content:center; border:1px solid black; background-color:#DDD; text-decoration:none; white-space:nowrap;">
        RESET
	</a>
	<a href="<?=hlien("tounes", "index")?>">

</a>

	<div id="divTableau">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				
			<th>Id</th>
			<th style="white-space:nowrap">
			    Libellé
			</th>
			<th>Album</th>
			<th style="white-space:nowrap;">
			    Commentaires
			</th>
			<th>Artistes</th>
			<th>Personnages</th>
			<?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
				<th>Modifier</th>
				<th>Supprimer</th>
			<?php } ?>
			</tr>
		</thead>
		<tbody>
		<?php
		foreach ( $data as $row) { 
			extract($row); ?>
		<tr id="<?=mhe($row['tou_id'])?>" class="ligne">
			
			<td><?=mhe($row['tou_id'])?></td>
			<td style="white-space:nowrap"><?=mhe($row['tou_libelle'])?></td>
			<td style="white-space: nowrap;">
				<?php
					if (in_array($tou_id, $noInclure)) {
						echo "Aucun album choisi";
					}else {
						foreach($listInclure[$tou_id] as $key =>$value){
						   ?>
							<a href="<?=hlien('albums', 'index')?>#<?=$value[1]?>">
							    <img src='<?=$value[2]?>' width='60px'>
							</a>
						<?php }
					}
				?></td>
			<td class="text-nowrap">
			    <?php if(strlen($tou_commentaire)>1){ ?>
			    <details>
			        <summary>
			            lire les commentaires
			        </summary>
			        <?php 
			    $tabcom=[];
			    if(str_contains($tou_commentaire, ";")){
			    $tabcom=explode(";", $tou_commentaire);
			    }
			    //debug($tabcom);
			    foreach($tabcom as $value){?>
                    <?=$value?><br>
			    <?php } ?>
			</details>
			<?php } ?>
		    </td>
			<td style="white-space: nowrap;">
			    <table>
			        <tr>
			            <td>ECRITURE :</td>
			            <td>
			                <?php if (in_array($tou_id, $noEcrire)) { ?>
						        personne n'a Ecrit
				        	 <?php } else {
				        	     //debug($listEcrire);
						        foreach($listEcrire[$tou_id] as $key =>$value){
							        //echo "-$value[1]<br>";
							        ?>
							<a href="<?=hlien('membres', 'index')?>#<?=$value[1]?>">
							    <img src='<?=$value[2]?>' width='60px'>
							</a>
						<?php }
					        }
				            ?>
			            </td>
			       </tr>
			       <tr>
			           <td>COMPOSITION :</td>
			           <td>
				<?php
					if (in_array($tou_id, $noComposer)) {
						echo "personne n'a composé";
					}else {
						foreach($listComposer[$tou_id] as $key =>$value){
							//echo "-$value[1]<br>";
							?>
							<a href="<?=hlien('membres', 'index')?>#<?=$value[1]?>">
							    <img src='<?=$value[2]?>' width='60px'>
							</a>
						<?php }
					}
				?>
			</td>
		</tr>
</table>
		<td style="white-space: nowrap;">
				<?php
					if (in_array($tou_id, $noPersonnage)) {
						echo "personne n'apparait";
					}else {
						foreach($listPersonnage[$tou_id] as $key =>$value){
							?>
							<a href="<?=hlien("personnages", "index")?>#<?=$value[1]?>"><?=ucfirst($value[1])?></a><br>
							<?php
							
						}
					}
				?>
			</td>

			<?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
				<td><a class="btn btn-warning" href="<?=hlien("tounes","edit","id",$row["tou_id"])?>">Modifier</a></td>
				<td><a class="btn btn-danger" href="<?=hlien("tounes","delete","id",$row["tou_id"])?>">Supprimer</a></td>
			<?php } ?>
		</tr>
		<?php } ?>
		</tbody>
	</table>
	</div>
	<script>
	    let duree=document.querySelectorAll(".touneDuree")
	    //console.log(duree)
	    
	    for (let i=0;i<duree.length;i++){
	        duree[i].addEventListener("blur", addDuree)
	    }

	   
	    //duree.
	    
async function addDuree(e){
	        time=e.target.innerHTML
	        let touId=e.target.dataset.id
	    console.log(e.target.innerHTML)
	    url="<?=hlien('tounes', 'ajaxAddDuree')?>&toune="+touId+"&duree="+time
	    console.log(url)
	    await fetch(url)
    
}

let tabPhotoFiltre=document.querySelectorAll(".photoFiltre")
console.log("tabPhotoFiltre", tabPhotoFiltre)
for (let i=0;i<tabPhotoFiltre.length;i++){
tabPhotoFiltre[i].addEventListener("click", actionFiltre)
}

async function actionFiltre(e){
console.log("inActionFiltre")
e.target.classList.toggle("selectedPic");
console.log(e.target.classList)
//e.target.style.border="3px solid blue"
let tabLigne=document.querySelectorAll(".ligne")
let url="<?=hlien('tounes', 'filtreMembres')?>&cat="+e.target.dataset.categorie+"&membre="+e.target.dataset.id
console.log(url)
let response = await fetch(url)
let data = await response.json()
console.log(data)
console.log(tabLigne)
for (let i=0; i<tabLigne.length;i++){
    tabLigne[i].style.display="none"
    console.log("e.target.dataset.id", e.target.dataset.id)
    //console.log(data[i])
    for (let j=0;j<data.length;j++){
        if(data[j]=tabLigne[i].id){
            tabLigne[i].style.display="block"
        }
    }
    //console.log("tabLigne[i].id", tabLigne[i].id)

}
}
</script>