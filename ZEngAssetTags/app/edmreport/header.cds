using CatalogService as service from '../services';
/**
    UI.FieldGroup
 */
annotate service.AssetMainReport with @(
        UI.FieldGroup #HeaderData1           : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Tagno
            },
            {
                $Type : 'UI.DataField',
                Value : Tgroup_Code
            },
            {
                $Type : 'UI.DataField',
                Value : Status_Code
            }
        ]
    },
    UI.FieldGroup #HeaderData2           : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Disc_Code
            },
            {
                $Type : 'UI.DataField',
                Value : Dlc_Code
            },
            {
                $Type : 'UI.DataField',
                Value : Phtyp_Code
            }
        ]
    },
 );
