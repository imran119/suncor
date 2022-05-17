using CatalogService from '../../../../srv/schema_srv';
using from '../common/header';
using from '../common/core-data';

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
            ID      : 'collectionFacetSection',
            Label   : 'Core Data',
            Facets  : [
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#section1'
                }/*,
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#section2'
                }*/
               /* {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : 'lines/@UI.LineItem',
                    Label   : 'Lines',
                }*/
            ],
        },
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'CollectionFacet3',
            Label   : 'Document Xrefs',
            Facets  : [
                
            ],
        },
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'CollectionFacet4',
            Label   : 'Administrative Data',
            Facets  : [
                
            ],
        },
    ]
);