using CatalogService as service from '../services';

annotate service.AssetMain with @(
    UI.FieldGroup #insDataSec1         : {
        Data    : [
            { Value   : Elvolt},
            { Value   : Engu},
            { Value   : Eqlin},
            { Value   : Iscirc},
            { Value   : Linesz}
        ]
    },
    UI.FieldGroup #insDataSec2         : {
        Data    : [
            { Value   : Insrng},
            { Value   : Silvl},
            { Value   : Sigspn},
            { Value   : Sigzr},
            { Value   : Silvl}
        ]
    },
    UI.FieldGroup #insDataSec3         : {
        Data    : [
            { Value   : Instrmk}
        ]
    },
    UI.FieldGroup #insContSec1         : {
        Data    : [
            { Value   : Ioloc},
            { Value   : Iosigd},
            { Value   : Iosigs},
            { Value   : Iosigt},
            { Value   : Iotyp}
        ]
    },
    UI.FieldGroup #insContSec2         : {
        Data    : [
            { Value   : Inflp},
            { Value   : Pcunod},
            { Value   : Pcumod},
            { Value   : Pcumod2},
            { Value   : Pcucab},
            { Value   : Pcuslv},
            { Value   : Pcuslvc},
            { Value   : Pcuslv2}
        ]
    },
    UI.FieldGroup #insContSec3         : {
        Data    : [
            { Value   : Ctlrmk}
        ]
    },
    UI.FieldGroup #insAlarmSec1         : {
        Data    : [
            { Value   : Almrmk}
        ]
    },
    UI.FieldGroup #instFGsec1         : {
        Data    : [
            { Value   : Firezn},
            { Value   : Matl},
            { Value   : Alhg},
            { Value   : Manuf},
            { Value   : Model},
            { Value   : Dlc},
            { Value   : Serial},
            { Value   : Alhh}
        ]
    },
    UI.FieldGroup #instFGsec2         : {
        Data    : [
            { Value   : Alhh}
        ]
    },
       UI.FieldGroup #instJBsec1         : {
        Data    : [
            { Value   : Iscirc},
            { Value   : Alhh}
        ]
    },
);


