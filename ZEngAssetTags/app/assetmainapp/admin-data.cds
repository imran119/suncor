using CatalogService as service from '../services';

annotate service.AssetMain with @(
    UI.FieldGroup #adminsec1         : {
        Data    : [
            { Value   : Sapb},
            { Value   : Fissue},
            { Value   : Xissue},
             { Value   : Itag},
        ]
    },
 UI.FieldGroup #adminsec2         : {
        Data    : [
            { Value   : Impdat},
            { Value   : Hosign},
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