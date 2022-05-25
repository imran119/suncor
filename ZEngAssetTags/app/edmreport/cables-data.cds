using CatalogService as service from '../services';

annotate service.AssetMainReport with @(
    UI.FieldGroup #cablesec1         : {
        Data    : [
            { Value   : Cblcd},
            { Value   : Cblsys},
            { Value   : Wonum}
        ]
    },
    UI.FieldGroup #fromEquipD         : {
        Data    : [
            { Value   : Frtag},
            { Value   : Gld1Fr},
            { Value   : Frdwg},
            { Value   : Frdsc3},
        ]
    },
    UI.FieldGroup #toEquipD         : {
        Data    : [
            { Value   : Totag},
            { Value   : Gld1To},
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