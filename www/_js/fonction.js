function createDiv(pageId, domparent, table, relation, bddId, bddNom, signe) {
    console.log("inCreateDive", "pageId, domparent, table, relation, bddId, bddNom, signe")
    console.log(pageId, domparent, table, relation, bddId, bddNom, signe)
    let boite = document.createElement("div")
    boite.style.border = "1px solid black"
    boite.style.padding = "5px"
    boite.innerHTML = bddNom + " "
    boite.dataset.pageId = pageId
    boite.classList.add("d-flex")
    domparent.appendChild(boite)
    let signBox = document.createElement("div")
    signBox.style.padding = "5px"
    signBox.style.marginLeft = "2px"
    signBox.style.width = "20px"
    signBox.style.height = "20px"
    signBox.style.display = "flex"
    signBox.style.alignItems = "center"
    signBox.style.justifyContent = "center"
    signBox.style.border = "1px solid black"
    boite.appendChild(signBox)
    if (signe == "plus") {
        signBox.innerHTML = "+"
        signBox.onclick = add(pageId, relation, bddId)
    } else if (signe == "moins") {
        signBox.innerHTML = "-"
        signBox.onclick = remove(relation, bddId)
    }
    return boite
}

async function add(pageId, relation, bddId) {
    console.log("inAdd")
    let url = '<?= hlien("'+relation+'", "add")?>&pageId='+pageId+'&bddId='+bddId 
    console.log(url)
    let response = await fetch(url)
}