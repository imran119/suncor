
using CatalogService from '../../../../srv/schema_srv';
using from '../common/header';
using from '../common/core-data';
using CatalogService.MainEntity as docs from '../common/doc-xrefs';
using from '../common/admin-data';


annotate CatalogService.MainEntity with @(
    UI.LineItem : {
        $value  : [
            {
                $Type           :   'UI.DataField',
                Value           :    Tagno
            },
            {
                $Type           :   'UI.DataField',
                Value           :    Tgroup
            },
            {
                $Type           :   'UI.DataField',
                Value           :    Status
            },
            {
                $Type           :   'UI.DataField',
                Value           :    Tdesc

            },
            {
                $Type           :   'UI.DataField',
                Value           :   Dlc
            }

        ]
    }
);
/**
    UI.SelectionFields
    Search-Term: #VisibleFilters
 */
annotate CatalogService.MainEntity with @(
    //Shown filters for the given fields after opening the application
    UI.SelectionFields : [
        Tagno,
        Tgroup,
        Status,
        Tdesc,
        Dlc
    ],
);

 /*
  * Header data
  */
annotate CatalogService.MainEntity with @(
     UI.HeaderFacets : [ 
         {
            $Type   : 'UI.ReferenceFacet',
            Target  : '@UI.FieldGroup#HeaderData1'
         },
          {
            $Type   : 'UI.ReferenceFacet',
            Target  : '@UI.FieldGroup#HeaderData2'
         }
      ]
);

annotate CatalogService.MainEntity with @( 
    UI.Facets : [
       /* {
            $Type   : 'UI.CollectionFacet',
            ID      : 'CollectionFacet1',
            Label   : 'Core Data',
            Facets  : [
                
            ],
        },*/
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'coreData',
            Label   : '{i18n>CoreData}',
            Facets  : [
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#section1',
                    ID      :  'section1',
                    Label   :  'Section1'
                },
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#section2',
                    ID      :  'section2',
                    Label   :  'Section2'
                },
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#section3',
                    ID      :  'section3',
                    Label   :  'Section3'
                },
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#flags',
                    ID      :  'flags',
                    Label   :  '{i18n>Flags}'
                },
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#HazData',
                    ID      :  'HazData',
                    Label   :  '{i18n>HazData}'
                },
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#notiWORN',
                    ID      :  'notiWORN'
                },
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#remarks',
                    ID      :  'remarks'
                },
            ],
        },
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'docXrefs',
            Label   : '{i18n>DocXref}',
            Facets  : [
                { 
                    $Type   : 'UI.ReferenceFacet',
                    Target  :  'docs/@UI.LineItem'
                }
            ],
        },
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'CollectionFacet4',
            Label   : '{i18n>admin-data}',
            Facets  : [
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#adminsec1',
                    ID      :  'adminsec1'
                },
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#adminsec2',
                    ID      :  'adminsec2'
                },
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#adminsec3',
                    ID      :  'adminsec3'
                },
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#adminsec4',
                    ID      :  'adminsec4'
                },
            ],
        },
    ]
);