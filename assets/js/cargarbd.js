 const  data = async () =>{
    const ruta = 'assets/js/comunas.json'
    const response = await fetch(ruta)
    const data = await response.json()
    let count = 0;
    let countCom = 0;
    let value = '';
    let comunaName = '';
    data.regions.forEach(element => {
        count += 1
        if (count <16) {
            value += `('${element.number}','${element.namec}'),\n`;  
        } else {
            value += `('${element.number}','${element.namec}')\n`;  
        }
        let regNum = element.number
        element.communes.forEach(element => {
            countCom += 1
            if (countCom < 346) {
                comunaName += `(NULL, '${element.name}','${regNum}'),\n`;
            } else {
                comunaName += `(NULL, '${element.name}','${regNum}')\n`;
            }
        });
    });
    const dataReg = `INSERT INTO \`regiones\` (\`id_reg\`, \`nom_reg\`) VALUES\n${value}`
    const dataCom = `INSERT INTO \`comunas\` (\`id_com\`,\`nom_com\`, \`fk_reg\`) VALUES\n${comunaName}`
    console.log(dataCom);
    console.log(dataReg);
}
