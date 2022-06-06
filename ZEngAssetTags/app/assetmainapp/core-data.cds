using CatalogService as service from '../services';

annotate service.AssetMain with @(
    UI.FieldGroup #section1         : {
        Data    : [
            { Value   : Dlc_Code},
            { Value   : Sys},
            { Value   : Eqfnr},  
        ],
        
        
    },
    UI.FieldGroup #section2         : {
        Data    : [
                { Value :   Manuf},
                { Value:    Suppl_Code},
                { Value:    Model},
                { Value:    Serial},
                { Value:    Ponum_Code},
        ]
    },
     UI.FieldGroup #section3         : {
        Data    : [
                {Value : Compdsc},
                { Value: Prntag_Code}
        ]
    },
    UI.FieldGroup #flags         : {
        Data    : [
                {Value : Lgflg_Code},
                { Value: Pvflg_Code},
                { Value: Vlvflg_Code},
                { Value: Hazflg_Code},
                { Value: Sapflg},
                { Value: Silvl_Code},
                { Value: Sceflg},
                { Value: Future_Code}
        ]
    },
    UI.FieldGroup #HazData         : {
        Data    : [
                {Value : Area_Code},
                { Value: Prmthd},
                { Value: Ingrs},
                { Value: Iscirc_Code},
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

