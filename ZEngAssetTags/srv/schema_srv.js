const cds = require("@sap/cds");


module.exports = async (srv) => {
    const {MainEntity, ZEngCLEntity} = srv.entities;
    srv.after(["READ"],MainEntity, async (response) => {
       // console.log('after');
        if(!response) return;
       /* if(response.Tgroup == "
       Equipment") {
            response.cableFlag = true;
            response.heatFlag = true;
        } */
    });
    srv.after(["READ"],ZEngCLEntity, async (response) => {
       // console.log('ZEngCLEntity' + JSON.stringify(response));
        if(!response) return;
      
    }); 
};

async function enableTagGroup(tGroup, rsp) {
    let tGroups = [Equipment, Cables, Heat];
    for(let i = 0; i < tGroups; i++) {
        if(tGroups[i] == tGroup) {
            rsp.tGroups[i] = true;
        } else {
            rsp.tGroups[i] = false;            
        }
    }
}
