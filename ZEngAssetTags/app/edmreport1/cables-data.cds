using CatalogService as service from '../services';

annotate service.AssetMainReport with @(
    UI.FieldGroup #cablesec1         : {
        Data    : [
            { Value   : Cblcd_Code},
            { Value   : Cblsys_Code},
            { Value   : Wonum}
        ]
    },
    UI.FieldGroup #fromEquipD         : {
        Data    : [
            { Value   : Frtag_Code},
            { Value   : Gld1Fr_Code},
            { Value   : Frdwg},
            { Value   : Frdsc3},
        ]
    },
    UI.FieldGroup #toEquipD         : {
        Data    : [
            { Value   : Totag_Code},
            { Value   : Gld1To_Code},
            { Value   : Todwg},
            { Value   : Toeqdsc},
        ]
    },
    UI.FieldGroup #lengthD         : {
        Data    : [
            { Value   : Rtlen},
            { Value   : Lenest}
        ]
    },
     UI.FieldGroup #cablesComment         : {
        Data    : [
            { Value   : Rtlen},
            { Value   : Lenest}
        ]
    }

);