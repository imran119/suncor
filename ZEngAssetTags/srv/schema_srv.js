const cds = require("@sap/cds");


module.exports = async (srv) => {
    const {AssetMain, AssetMainReport} = srv.entities;
    srv.after(["READ"],AssetMain, async (response) => {
        if(!response) return;
        if(!response.length)
            enableTagGroup(response.Tgroup, response);
    });
    srv.after(["READ"],AssetMainReport, async (response) => {
        if(!response) return;
        if(!response.length)
            enableTagGroup(response.Tgroup, response);
    }); 
    srv.after("draftActivate", "AssetMain", async (response) => {
        if(!response) return;
        if(!response.length)
            enableTagGroup(response.Tgroup, response);
    });
};
 function enableTagGroup(tGroup, res) {
    if(tGroup == "Equipment") {
        res.Equipment=false;
        toggleEQTGroups(res, true);
    } else if(tGroup == "Cables"){
        res.Cables=false;
        toggleCABTGroups(res, true);
    } else if(tGroup == "Heat"){
        res.Heat=false;
        toggleHTTGroups(res, true);
    } else if(tGroup == "Instruments"){
        res.Instruments=false;
        toggleINTTGroups(res, true);
    } else if(tGroup == "Lines"){
        res.Instruments=false;
        toggleLINTGroups(res, true);
    }
}
function toggleEQTGroups(res, aFlag) {
    res.Cables = aFlag; res.Lines = aFlag; res.Heat = aFlag; res.Instruments = aFlag;
}
function toggleCABTGroups(res, aFlag) {
    res.Equipment = aFlag; res.Lines = aFlag; res.Heat = aFlag; res.Instruments = aFlag;
}
function toggleHTTGroups(res, aFlag) {
    res.Cables = aFlag; res.Lines = aFlag; res.Equipment = aFlag; res.Instruments = aFlag;
}
function toggleLINTGroups(res, aFlag) {
    res.Cables = aFlag; res.Equipment = aFlag; res.Heat = aFlag; res.Instruments = aFlag;
}
function toggleINTTGroups(res, aFlag) {
    res.Cables = aFlag; res.Lines = aFlag; res.Heat = aFlag; res.Equipment = aFlag;
}
