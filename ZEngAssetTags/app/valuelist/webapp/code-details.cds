using CatalogService from '../../../srv/schema_srv';

annotate CatalogService.F4_Detail with @(
    UI        : {
        //TextArrangement     : #TextOnly,
        LineItem            : [
        {
            $Type             : 'UI.DataField',
            Value             : Code,
            ![@UI.Importance] : #High
        },
        {
            Value: Codedsc
        },
        {
            Value: Codeltxt
        }

        ]
    }
);
