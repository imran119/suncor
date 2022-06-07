using CatalogService as service from '../../srv/schema_srv';


annotate service.AssetMainReport with @(
    UI.LineItem #groupdetails1 : [
            {
                $Type           :   'UI.DataField',
                Value           :    Tagno,
                Label           :  '{i18n>Tagno}',
                ![@UI.Importance]   : #High,
            },
            {
                $Type           :   'UI.DataField',
                Value           :    Tgroup_Code,
                Label           :  '{i18n>Tgroup}',
                ![@UI.Importance]   : #High,
            },
            {
                $Type           :   'UI.DataField',
                Value           :    Status_Code,
                Label           :  '{i18n>Status}',
                ![@UI.Importance]   : #High,
            },
            {
                $Type           :   'UI.DataField',
                Value           :    Tdesc,
                Label           :  '{i18n>Tdesc}',
                ![@UI.Importance]   : #High,

            },
            {
                $Type           :   'UI.DataField',
                Value           :   Disc_Code,
                Label           :  '{i18n>Disc}',
                //![@UI.Importance]   : #Low,
            }

         
    ],
        UI.LineItem #equipreport1 : [
        {
            $Type : 'UI.DataField',
            Label : 'Tagno',
            Value : Tagno,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Tag Group',
            Value : Tgroup_Code,
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
         
    ],
    UI.LineItem #cabreport1 : [
        {
            $Type : 'UI.DataField',
            Label : 'Tagno',
            Value : Tagno,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Tgroup',
            Value : Tgroup_Code,
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
    ],
      UI.PresentationVariant #gv1 : { 
            Text                : 'Group Details',
            SortOrder       : [
                {
                    Property    : Tagno,
                    Descending  : false,
                },
            ],
            Visualizations  : ['@UI.LineItem#groupdetails1'],
        },
        UI.PresentationVariant #ev1 : { 
            Text                : 'Equipment',
            SortOrder       : [
                {
                    Property    : Tagno,
                    Descending  : false,
                },
            ],
            Visualizations  : ['@UI.LineItem#equipreport1'],
        },
        UI.PresentationVariant #cb1 : { 
            Text                : 'Cables',
            SortOrder       : [
                {
                    Property    : Tagno,
                    Descending  : false,
                },
            ],
            Visualizations  : ['@UI.LineItem#cabreport1']
        },
    

);



   
