using CatalogService from '../../../../srv/schema_srv';

annotate CatalogService.MainEntity with @(
    UI.FieldGroup #section1         : {
        Data    : [
            {
                $Type             : 'UI.DataField',
                Value             : Dlc
            },
            {
                $Type             : 'UI.DataField',
                Value             : Sys
            }
            
        ]
    }
); 
/*
annotate CatalogService.MainEntity with @(
    UI.FieldGroup #section2         : {
        Data    : [
            {
                $Type             : 'UI.DataField',
                Value             : Eqfnr
            }
            
        ]
    }
);*/
