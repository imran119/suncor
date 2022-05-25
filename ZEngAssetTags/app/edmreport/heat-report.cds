using CatalogService as service from '../../srv/schema_srv';
//ID, Pcumod2, Pcumod, Pcunod, Pcuslv, Tdesc,  Ctrlact, Ctrlfl
annotate service.AssetMainHTReport with @(
     Common.SemanticKey : [Tagno],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Tagno',
            Value : Tagno,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Pcumod2',
            Value : Pcumod2,
        },
        {
            $Type : 'UI.DataField',
             Label : 'Pcumod',
            Value : Pcumod,
            ![@UI.Importance]   : #High,
        },
        {
            $Type : 'UI.DataField',
             Label : 'Pcuslv',
            Value : Pcuslv,
            ![@UI.Importance]   : #High,
        },
        {
            $Type : 'UI.DataField',
             Label : 'Tdesc',
            Value : Tdesc,
            ![@UI.Importance]   : #High,
        },
        {
            $Type : 'UI.DataField',
             Label : 'Ctrlact',
            Value : Ctrlact,
            ![@UI.Importance]   : #High,
        }
         
    ]
);

annotate service.AssetMainHTReport with @(
    UI.PresentationVariant #HTPSVariant : {
            Text                : 'Heat',
            SortOrder       : [
                {
                    Property    : Tagno,
                    Descending  : false,
                },
            ],
             Visualizations  : ['@UI.LineItem']
    },
); 