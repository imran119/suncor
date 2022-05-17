using CatalogService from '../../../../srv/schema_srv';

annotate CatalogService.MainEntity with @(
    UI.FieldGroup #adminsec1         : {
        Data    : [
            { Value   : Sapb},
            { Value   : Fissue},
            { Value   : Xissue},
             { Value   : Itag},
        ]
    }
);

annotate CatalogService.MainEntity with @(
    UI.FieldGroup #adminsec2         : {
        Data    : [
            { Value   : Impdat},
            { Value   : Hosign},
            { Value   : Notifn},
            { Value   : Tagsrc},
            { Value   : Wonum},
        ]
    }
);

annotate CatalogService.MainEntity with @(
    UI.FieldGroup #adminsec3         : {
        Data    : [
            { Value   : Vendtag}
        ]
    }
);
annotate CatalogService.MainEntity with @(
    UI.FieldGroup #adminsec4         : {
        Data    : [
            { Value   : Admrmk}
        ]
    }
);