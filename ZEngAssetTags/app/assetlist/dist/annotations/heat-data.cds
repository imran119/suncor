using CatalogService from '../../../../srv/schema_srv';

annotate CatalogService.MainEntity with @(
    UI.FieldGroup #heatSec1         : {
        Data    : [
            { Value   : Linlgth},
            { Value   : Insthk},
            { Value   : Tmpmain},
            { Value   : Piphtls}
        ]
    },
    UI.FieldGroup #heatSec2         : {
        Data    : [
            { Value   : Cbltyp},
            { Value   : Nopass},
            { Value   : Operc},
            { Value   : Bkgrp},
            { Value   : Heatout},
            { Value   : Totcircl},
            { Value   : Inrcur},
            { Value   : Pwrpt},
        ]
    }

);

annotate CatalogService.ZenData_Htc with @(
    UI.LineItem : [
        { Value: Htcirc}
    ]
 ) ;