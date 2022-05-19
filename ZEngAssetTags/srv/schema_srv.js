const cds = require("@sap/cds");


module.exports = async (srv) => {
    const {MainEntity} = srv.entities;
    srv.after(["READ"],MainEntity, async (response) => {
        console.log('YAHOooooooooooooo' + JSON.stringify(response));
        if(!response) return;
       /* if(response.Tgroup == "Equipment") {
            response.cableFlag = true;
            response.heatFlag = true;
        } */
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
