using CatalogService as service from '../../srv/schema_srv';

/**
    UI.SelectionPresentationVariant
 */
 

annotate service.AssetMainCABReport with @(
     Common.SemanticKey : [Tagno],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Tagno',
            Value : Tagno,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Tgroup',
            Value : Tgroup,
        },
        {
            $Type : 'UI.DataField',
             Label : 'Alhh',
            Value : Alhh,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Allw',
            Value : Allw,
        },
        {
            $Type : 'UI.DataField',
             Label : 'Ctrlfl',
            Value : Ctrlfl,
        },
    ]
);
/**
    UI.SelectionPresentationVariant
 */
annotate service.AssetMainCABReport with @(
    UI.PresentationVariant #CABPSVariant : {
            Text                : 'Cables',
            SortOrder       : [
                {
                    Property    : Tagno,
                    Descending  : false,
                },
            ],
             Visualizations  : ['@UI.LineItem']
    },
);