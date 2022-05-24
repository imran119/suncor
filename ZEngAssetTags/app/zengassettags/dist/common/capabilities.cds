using CatalogService from '../../../../srv/schema_srv';

annotate CatalogService.MainEntity with @odata.draft.enabled;
annotate CatalogService.MainEntity with @(
    //Disables the delete option dependent of the fields value
    Capabilities.DeleteRestrictions : {
        Deletable   : false, //Search-Term: #DynamicCRUD
    },
     Capabilities.UpdateRestrictions : {
        Updatable : true, //UpdateRestrictions are ignored in determining if the edit button is visible or not, but it still affects wheather the fields are editable or not
    }/*,
    Capabilities.FilterRestrictions : {
        Filterable: true
    }*/
);
annotate CatalogService.MainEntity with @(
    //Search-Term: #ChartSection
    Aggregation.ApplySupported : {
        Transformations          : [
            'aggregate',
            'topcount',
            'bottomcount',
            'identity',
            'concat',
            'groupby',
            'filter',
            'expand',
            'top',
            'skip',
            'orderby',
            'search'
        ],
        PropertyRestrictions     : true,

    }
);

annotate CatalogService.F4_Header with @odata.draft.enabled;