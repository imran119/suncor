using CatalogService from '../../../../srv/schema_srv';

annotate CatalogService.MainEntity with @(
    UI.FieldGroup #lineDSec1         : {
        Data    : [
            { Value   : Linesz},
            { Value   : Pipspec},
            { Value   : Sched},
            { Value   : Matl},
            { Value   : Inscls},
            { Value   : Ndtcls},
            { Value   : Ptcls},
            { Value   : Fluid}
        ]
    },
    UI.FieldGroup #lineDSec2         : {
        Data    : [
            { Value   : Frtag},
            { Value   : Gld1Fr}
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