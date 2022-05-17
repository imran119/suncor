using CatalogService from '../../../../srv/schema_srv';

annotate CatalogService.MainEntity with @odata.draft.enabled;
annotate CatalogService.ZDATA1 with @(
    //Disables the delete option dependent of the fields value
    Capabilities.DeleteRestrictions : {
        Deletable   : MainEntity, //Search-Term: #DynamicCRUD
    },
     Capabilities.UpdateRestrictions : {
        Updatable : true, //UpdateRestrictions are ignored in determining if the edit button is visible or not, but it still affects wheather the fields are editable or not
    }
);