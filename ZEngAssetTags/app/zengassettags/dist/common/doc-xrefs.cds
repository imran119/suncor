using CatalogService from '../../../../srv/schema_srv';

annotate CatalogService.ZengData_Doc with @(
    UI.LineItem : [
        { Value: Item},
        { Value: Docno},
        { Value: Doctyp},
        { Value: Doctitle},
        { Value: Comnt}
    ]
 ) ;
