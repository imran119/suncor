using CatalogService as service from '../services';

annotate service.AssetMainReport with @(
    UI.FieldGroup #lineDSec1         : {
        Data    : [
            { Value   : Linesz_Code},
            { Value   : Pipspec_Code},
            { Value   : Sched},
            { Value   : Matl},
            { Value   : Inscls_Code},
            { Value   : Ndtcls},
            { Value   : Ptcls},
            { Value   : Fluid}
        ]
    },
    UI.FieldGroup #lineDSec2         : {
        Data    : [
            { Value   : Frtag_Code},
            { Value   : Gld1Fr_Code}
        ]
    },
    UI.FieldGroup #lineDSec3         : {
        Data    : [
            { Value   : Poprmx},
            { Value   : Poprmn},
            { Value   : Popr},
            { Value   : Ptst},
            { Value   : Pdes},
        ]
        
    },
        UI.FieldGroup #lineDSec4         : {
        Data    : [
            { Value   : Tdesmx},
            { Value   : Tdesmn},
            { Value   : Ndtmp},
            { Value   : Toprmx},
            { Value   : Toprmn},
            { Value   : Toprmn},
            { Value   : Temptr},
        ]
        
    }  

);