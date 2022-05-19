
using CatalogService from '../../../../srv/schema_srv';
using from '../common/header';
using from '../common/core-data';
using CatalogService.MainEntity as docs from '../common/doc-xrefs';
using from '../common/admin-data';
using from './cables';
using from './equip-data';
using CatalogService.MainEntity as htc from  './heat';


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
        //CABLES
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'cablesData',
            Label   : '{i18n>cablesData}',
            ![@UI.Hidden]:  cableFlag,
            Facets  : [
                { 
                    $Type   : 'UI.ReferenceFacet',
                    Target  :  '@UI.FieldGroup#cablesec1',
                    Label   :  '{i18n>CableDetails}'
                },
                { 
                    $Type   : 'UI.ReferenceFacet',
                    Target  :  '@UI.FieldGroup#fromEquipD',
                    Label   :  '{i18n>FromEquipDetails}'
                },
                { 
                    $Type   : 'UI.ReferenceFacet',
                    Target  :  '@UI.FieldGroup#toEquipD',
                    Label   :  '{i18n>ToEquipmentDetails}'
                },
                { 
                    $Type   : 'UI.ReferenceFacet',
                    Target  :  '@UI.FieldGroup#lengthD',
                    Label   :  '{i18n>LengthDetails}'
                }
            ],
        },
        //EQUIPMENT
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'EquipDataId',
            Label   : '{i18n>EquipData}',
            ![@UI.Hidden]:  equipFlag,
            Facets  : [
                { 
                    $Type   : 'UI.CollectionFacet',
                    ID      : 'EquipDataId1',
                    Label  :  '{i18n>Equipment}',
                    Facets : [ 
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#eqipDataSec1',
                            Label  :  '{i18n>equipment}',
                        },
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#eqipDataSec2'
                        },
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#eqipDataSec3'
                        }
                        
                    ],
                },
                { 
                    $Type   : 'UI.CollectionFacet',
                    ID      : 'liftingGearCollectionId',
                    Label  :  '{i18n>LiftingGear}',
                    Facets : [ 
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#eqipLG1'
                        },
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#eqipLG2'
                        },
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#eqipLG3'
                        }
                        
                    ],
                },
                { 
                    $Type   : 'UI.CollectionFacet',
                    ID      : 'pVesselCollectionId',
                    Label  :  '{i18n>PressureVessel}',
                    Facets : [ 
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#pVesselSec1'
                        },
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#pVesselSec2'
                        },
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#pVesselSec3'
                        },
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#pVesselSec4'
                        },
                         {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#pVesselSec5'
                        }
                    ],
                },
                    { 
                    $Type   : 'UI.CollectionFacet',
                    ID      : 'electricalCollectionId',
                    Label  :  '{i18n>Electrical}',
                    Facets : [ 
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#electrSec1'
                        },
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#electrSec2'
                        }
                    ]
                }

            ],
        }, 
        //HEAT
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'heatData',
            Label   : '{i18n>HeatData}',
            ![@UI.Hidden]:  heatFlag,
            Facets  : [
                { 
                    $Type   : 'UI.ReferenceFacet',
                    Target  :  '@UI.FieldGroup#heatSec1'
                },
                { 
                    $Type   : 'UI.ReferenceFacet',
                    Target  :  '@UI.FieldGroup#heatSec2'
                },
    
            ],
        },

    ]
);