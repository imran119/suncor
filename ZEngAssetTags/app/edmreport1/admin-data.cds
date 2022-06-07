using CatalogService as service from '../services';

annotate service.AssetMainReport with @(
    UI.FieldGroup #adminsec1         : {
        Data    : [
            { Value   : Sapb_Code},
            { Value   : Fissue},
            { Value   : Xissue_Code},
             { Value   : Itag_Code},
        ]
    },
 UI.FieldGroup #adminsec2         : {
        Data    : [
            { Value   : Impdat_Code},
            { Value   : Hosign_Code},
            { Value   : Notifn},
            { Value   : Tagsrc},
            { Value   : Wonum},
        ]
    },
 UI.FieldGroup #adminsec3         : {
        Data    : [
            { Value   : Vendtag}
        ]
    },
 UI.FieldGroup #adminsec4         : {
        Data    : [
            { Value   : Admrmk}
        ]
    }
);