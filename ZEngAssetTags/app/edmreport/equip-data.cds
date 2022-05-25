using CatalogService as service from '../services';

annotate service.AssetMainReport with @(
    UI.FieldGroup #eqipDataSec1         : {
        Data    : [
            { Value   : Compdsc},
            { Value   : Dlc},
            { Value   : Dlcdsc}
        ]
    },
    UI.FieldGroup #eqipDataSec2         : {
        Data    : [
            { Value   : Ainsp}
        ]
    },
    UI.FieldGroup #eqipDataSec3         : {
        Data    : [
            { Value   : Eqprmk}
        ]
    },
    UI.FieldGroup #eqipLG1         : {
        Data    : [
            { Value   : Compdsc},
            { Value   : Dlc},
            { Value   : Serial},
             { Value   : Manuf},
            { Value   : Lgflg}
        ]
    },
    UI.FieldGroup #eqipLG2         : {
        Data    : [
            { Value   : Nderptno},
            { Value   : Swl},
            { Value   : Minsftr},
             { Value   : Tstdat},
            { Value   : Tstload}
        ]
    },
        UI.FieldGroup #eqipLG3         : {
        Data    : [
            { Value   : Mantst},
            { Value   : Ainsp},
            { Value   : Indep}
        ]
    },
    UI.FieldGroup #pVesselSec1        : {
        Data    : [
            { Value   : Dlc},
            {
                $Type   : 'UI.DataFieldForAnnotation',
                Target  : '@UI.ConnectedFields#compCFWt'
            },
            {
                $Type   : 'UI.DataFieldForAnnotation',
                Target  : '@UI.ConnectedFields#modelCFWt'
            },
            {
                $Type   : 'UI.DataFieldForAnnotation',
                Target  : '@UI.ConnectedFields#manufCFWt'
            },
            {
                $Type   : 'UI.DataFieldForAnnotation',
                Target  : '@UI.ConnectedFields#vessTCF'
            },
        ]
    },
    UI.FieldGroup #pVesselSec2       : {
        Data    : [
            {
                $Type   : 'UI.DataFieldForAnnotation',
                Target  : '@UI.ConnectedFields#mawpCF'
            },
            {
                $Type   : 'UI.DataFieldForAnnotation',
                Target  : '@UI.ConnectedFields#mawtCF'
            },
            {
                $Type   : 'UI.DataFieldForAnnotation',
                Target  : '@UI.ConnectedFields#mdmtCF'
            },
            {
                $Type   : 'UI.DataFieldForAnnotation',
                Target  : '@UI.ConnectedFields#pressureCF'
            }

        ]
    },
    UI.FieldGroup #pVesselSec3    : {
        Data    : [
            { Value   : Pvflg},
            { Value   : Pdes},
            { Value   : Popr},
             { Value   : Ptst},
            { Value   : Tdes},
            { Value   : Topr}
        ]
    }, 
    UI.FieldGroup #pVesselSec4    : {
        Data    : [
            { Value   : Mantst},
            { Value   : Ainsp},
            { Value   : Indep}
        ]
    }, 
    UI.FieldGroup #pVesselSec5    : {
        Data    : [
            { Value   : Pvrmk}
        ]
    }, 
    UI.FieldGroup #electrSec1    : {
        Data    : [
            { Value   : Dlc},
            { Value   : Elvolt},
            { Value   : Dutykw}
        ]
    }, 
    UI.FieldGroup #electrSec2    : {
        Data    : [
            { Value   : Elecrmk}
        ]
    }, 

);

/**
    UI.ConnectedFields
    Search-Term: #ConnectedFields
 */
annotate service.AssetMainReport with @(
    UI.ConnectedFields #compCFWt : {
        Label       : '{i18n>CompDescWght}',
        Template    : '{Compdsc} - {Wgtdry}',
        Data        : {
            Compdsc    : {
                $Type : 'UI.DataField', 
                Value : Compdsc,
                 Label : '{i18n>Compdsc}'
            },
            Wgtdry     : {
                $Type : 'UI.DataField',
                Value : Wgtdry,
                Label : '{i18n>Wgtdry}',
            },
        },
    },
    UI.ConnectedFields #modelCFWt : {
        Label       : '{i18n>ModelCF}',
        Template    : '{Model} - {Wgtopr}',
        Data        : {
            Model    : {
                $Type : 'UI.DataField', 
                Value : Model,
            },
            Wgtopr     : {
                $Type : 'UI.DataField',
                Value : Wgtopr,
            },
        },
    },
    UI.ConnectedFields #manufCFWt : {
        Label       : '{i18n>ManufCF}',
        Template    : '{Manuf} - {Widthdia}',
        Data        : {
            Manuf    : {
                $Type : 'UI.DataField', 
                Value : Manuf,
            },
            Widthdia     : {
                $Type : 'UI.DataField',
                Value : Widthdia,
            },
        },
    },
    UI.ConnectedFields #vessTCF : {
        Label       : '{i18n>Vestyp}',
        Template    : '{Vestyp} - {Dimensn}',
        Data        : {
            Vestyp    : {
                $Type : 'UI.DataField', 
                Value : Vestyp,
            },
            Dimensn     : {
                $Type : 'UI.DataField',
                Value : Dimensn,
            },
        },
    },
    UI.ConnectedFields #mawpCF : {
        Label       : '{i18n>MAWPCF}',
        Template    : '{Mawp} - {Dimensn}',
        Data        : {
            Mawp    : {
                $Type : 'UI.DataField', 
                Value : Mawp,
            },
            Dimensn     : {
                $Type : 'UI.DataField',
                Value : Dimensn,
            },
        },
    },
    UI.ConnectedFields #mawtCF : {
        Label       : '{i18n>MAWTCF}',
        Template    : '{Mawt} - {Dimensn}',
        Data        : {
            Mawt    : {
                $Type : 'UI.DataField', 
                Value : Mawt,
            },
            Dimensn     : {
                $Type : 'UI.DataField',
                Value : Dimensn,
            },
        },
    },
    UI.ConnectedFields #mdmtCF : {
        Label       : '{i18n>MDMTCF}',
        Template    : '{Mdmt} - {Dimensn}',
        Data        : {
            Mdmt    : {
                $Type : 'UI.DataField', 
                Value : Mdmt,
            },
            Dimensn     : {
                $Type : 'UI.DataField',
                Value : Dimensn,
            },
        },
    },
    UI.ConnectedFields #pressureCF : {
        Label       : '{i18n>PressureCF}',
        Template    : '{Pressr} - {Dimensn}',
        Data        : {
            Pressr    : {
                $Type : 'UI.DataField', 
                Value : Pressr,
            },
            Dimensn     : {
                $Type : 'UI.DataField',
                Value : Dimensn,
            },
        },
    }
);


