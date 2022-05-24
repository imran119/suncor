using CatalogService from '../../../srv/schema_srv';

annotate CatalogService.F4_Detail with @(
    UI.LineItem : [
        { Value: Code},
        { Value: Codedsc},
        { Value: Codeltxt},
    ]
 ) ;
