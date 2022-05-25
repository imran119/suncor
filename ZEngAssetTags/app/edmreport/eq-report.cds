using CatalogService as service from '../../srv/schema_srv';

annotate service.AssetMainEQReport with @(
     Common.SemanticKey : [Tagno],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Tagno',
            Value : Tagno,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Tag Group',
            Value : Tgroup,
        },
        {
            $Type : 'UI.DataField',
             Label : 'Tagsrc',
            Value : Tagsrc,
            ![@UI.Importance]   : #High,
        },
        {
            $Type : 'UI.DataField',
             Label : 'Vendtag',
            Value : Vendtag,
            ![@UI.Importance]   : #High,
        }
         
    ]
);

annotate service.AssetMainEQReport with @(
    UI.PresentationVariant #EQPSVariant : {
            Text                : 'Equipment',
            SortOrder       : [
                {
                    Property    : Tagno,
                    Descending  : false,
                },
            ],
             Visualizations  : ['@UI.LineItem']
    },
); 