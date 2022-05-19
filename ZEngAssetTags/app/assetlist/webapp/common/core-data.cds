using CatalogService from '../../../../srv/schema_srv';

annotate CatalogService.MainEntity with @(
    UI.FieldGroup #section1         : {
        Data    : [
            { Value   : Dlc},
            { Value   : Sys},
            { Value   : Eqfnr},
            
        ]
    },
    UI.FieldGroup #section2         : {
        Data    : [
                { Value :   Manuf},
                { Value:    Suppl},
                { Value:    Model},
                { Value:    Serial},
                { Value:    Ponum},
        ]
    },
     UI.FieldGroup #section3         : {
        Data    : [
                {Value : Compdsc},
                { Value: Prntag}
        ]
    },
    UI.FieldGroup #flags         : {
        Data    : [
                {Value : Lgflg},
                { Value: Pvflg},
                { Value: Vlvflg},
                { Value: Hazflg},
                { Value: Sapflg},
                { Value: Silvl},
                { Value: Sceflg},
                { Value: Future}
        ]
    },
    UI.FieldGroup #HazData         : {
        Data    : [
                {Value : Area},
                { Value: Prmthd},
                { Value: Ingrs},
                { Value: Iscirc},
                { Value: Tcls},
                { Value: Gsgrp},
                { Value: Harea},
                { Value: Ainsp}
        ]
    },
    UI.FieldGroup #notiWORN         : {
        Data    : [
                {Value : Notifn},
                { Value: Wonum}
        ]
    },
    UI.FieldGroup #remarks         : {
        Data    : [
                {
                    Value : Corermk
                }
        ]
    }
); 

