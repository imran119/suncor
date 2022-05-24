
using CatalogService from '../../../srv/schema_srv';
using CatalogService.F4_Detail as details from './code-details';

annotate CatalogService.F4_Header with @(
    UI.LineItem : {
        $value  : [
            {
                $Type           :   'UI.DataField',
                Value           :    Cdgrp
            },
            {
                $Type           :   'UI.DataField',
                Value           :    Cdgrpdsc
            }
        ]
    }, 
);
/**
    UI.SelectionFields
    Search-Term: #VisibleFilters
 */
annotate CatalogService.F4_Header with @(
    //Shown filters for the given fields after opening the application
    UI.SelectionFields : [
        Cdgrp,
        Cdgrpdsc
    ],
);

/**
    UI.PresentationVariant
 */
annotate CatalogService.F4_Detail with @(
    UI.PresentationVariant : {
        SortOrder       : [
            {
                Property    : Code,
                Descending  : true,
            },
        ],
        Visualizations  : ['@UI.LineItem'],
    },
);
annotate CatalogService.F4_Header with @(
    UI.PresentationVariant : {
        SortOrder       : [
            {
                Property    : Cdgrp,
                Descending  : false,
            },
        ]
    },
);
annotate CatalogService.F4_Header with @(
    UI.HeaderInfo :{
        TypeName        : 'Code Group',
        TypeNamePlural  : 'Code Groups',
        Title           : {
            $Type : 'UI.DataField',
            Value : Cdgrp,
        },
        Description     : {
            $Type : 'UI.DataField',
            Value : Cdgrpdsc,
        }
    },
);


annotate CatalogService.F4_Header with @( 
    UI.Facets : [
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'Codes',
            Label   : 'Codes',
            Facets  : [
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : 'details/@UI.LineItem'
                },
            ],
        },
       

    ]
);