using CatalogService as service from '../services';

annotate service.AssetMain with @(
    UI.FieldGroup #insDataSec1         : {
        Data    : [
            { Value   : Elvolt},
            { Value   : Engu},
            { Value   : Eqlin},
            { Value   : Iscirc_Code},
            { Value   : Linesz_Code}
        ]
    },
    UI.FieldGroup #insDataSec2         : {
        Data    : [
            { Value   : Insrng},
            { Value   : Silvl_Code},
            { Value   : Sigspn},
            { Value   : Sigzr},
            { Value   : Silvl_Code}
        ]
    },
    UI.FieldGroup #insDataSec3         : {
        Data    : [
            { Value   : Instrmk}
        ]
    },
    UI.FieldGroup #insContSec1         : {
        Data    : [
            { Value   : Ioloc_Code},
            { Value   : Iosigd},
            { Value   : Iosigs_Code},
            { Value   : Iosigt_Code},
            { Value   : Iotyp_Code}
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
            { Value   : Firezn_Code},
            { Value   : Matl},
            { Value   : Alhg},
            { Value   : Manuf},
            { Value   : Model},
            { Value   : Dlc_Code},
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
            { Value   : Iscirc_Code},
            { Value   : Alhh}
        ]
    },
);


