
/**
    UI.FieldGroup
 */
annotate CatalogService.MainEntity with @(
        UI.FieldGroup #HeaderData1           : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Tagno
            },
            {
                $Type : 'UI.DataField',
                Value : Tgroup
            },
            {
                $Type : 'UI.DataField',
                Value : Status
            }
        ]
    },
 );
 annotate CatalogService.MainEntity with @(
        UI.FieldGroup #HeaderData2           : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Disc
            },
            {
                $Type : 'UI.DataField',
                Value : Dlc
            },
            {
                $Type : 'UI.DataField',
                Value : Phtyp
            }
        ]
    },
 );