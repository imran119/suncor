using CatalogService as service from '../services';

annotate service.AssetMainDoc with @(
    UI.LineItem : [
        { Value: Item},
        { Value: Docno},
        { Value: Doctyp},
        { Value: Doctitle},
        { Value: Comnt}
    ]
 ) ;
