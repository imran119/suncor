
using CatalogService as service from '../services';
using CatalogService.AssetMainDoc as docs from './doc-xrefs';
using CatalogService.AssetMainHtc as htc from  './heat-data';

annotate service.AssetMain with @(
    Common.SemanticKey : [Tagno],
    UI.LineItem : {
        $value  : [
            {
                $Type           :   'UI.DataField',
                Value           :    Tagno,
                ![@UI.Importance]   : #High,
            },
            {
                $Type           :   'UI.DataField',
                Value           :    Tgroup,
                ![@UI.Importance]   : #High,
            },
            {
                $Type           :   'UI.DataField',
                Value           :    Status,
                ![@UI.Importance]   : #High,
            },
            {
                $Type           :   'UI.DataField',
                Value           :    Tdesc,
                ![@UI.Importance]   : #High,

            },
            {
                $Type           :   'UI.DataField',
                Value           :   Disc,
                //![@UI.Importance]   : #Low,
            }

        ]
    }
);
/**
    UI.PresentationVariant
    Search-Term: #DefaultSort
 */
annotate service.AssetMain with @(
    UI.PresentationVariant : {
        SortOrder       : [ //Default sort order
            {
                Property    : Tagno,
                Descending  : true,
            },
        ],
        Visualizations  : ['@UI.LineItem'],
    },
);
/**
    UI.SelectionFields
    Search-Term: #VisibleFilters
 */
annotate service.AssetMain with @(
    //Shown filters for the given fields after opening the application
    UI.SelectionFields : [
        Tagno,
        Tgroup,
        Status,
        Tdesc,
        Disc
       // Disc_ID
    ],
);
annotate service.AssetMain with @(
    UI.HeaderInfo :{
        TypeName        : 'AssetTag',
        TypeNamePlural  : 'Asset Tags',
        Title           : {
            $Type : 'UI.DataField',
            Value : Tgroup,
        },
        Description     : {
            $Type : 'UI.DataField',
            Value : Tdesc,
        }
    },
);
 /*
  * Header data
  */
annotate service.AssetMain with @(
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

annotate service.AssetMain with @( 
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
       
        //CABLES
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'cablesData',
            Label   : '{i18n>cablesData}',
            ![@UI.Hidden]:  Cables,
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
            ![@UI.Hidden]:  Equipment,
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
            ![@UI.Hidden]:  Heat,
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
        //Instrument data
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'instrumentDataId',
            Label   : '{i18n>InstrumentsData}',
            ![@UI.Hidden]:  Instruments,
            Facets  : [
                { 
                    $Type   : 'UI.CollectionFacet',
                    ID      : 'instrumentDataCollId',
                    Label  :  '{i18n>Instruments}',
                    Facets : [ 
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#insDataSec1'
                        },
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  : '@UI.FieldGroup#insDataSec2',
                            Label   : '{i18n>RangeData}',
                        },
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#insDataSec3'
                        }
                        
                    ],
                },
                { 
                    $Type   : 'UI.CollectionFacet',
                    ID      : 'instrumentDataControllCollId',
                    Label  :  '{i18n>Control}',
                    Facets : [ 
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#insContSec1',
                            Label   : '{i18n>IOData}',
                        },
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#insContSec2'
                        },
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#insContSec3'
                        }
                        
                    ],
                },
                { 
                    $Type   : 'UI.CollectionFacet',
                    ID      : 'instrumentDataAlarmCollId',
                    Label  :  '{i18n>Alarm}',
                    Facets : [ 
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#insAlarmSec1',
                            
                        },
                        
                        
                    ],
                },
                { 
                    $Type   : 'UI.CollectionFacet',
                    ID      : 'instrumentDataFGCollId',
                    Label  :  '{i18n>FG}',
                    Facets : [ 
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#instFGsec1',
                            
                        },
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#instFGsec2',
                            
                        },
                        
                        
                    ],
                },
                { 
                    $Type   : 'UI.CollectionFacet',
                    ID      : 'instrumentDataJBCollId',
                    Label  :  '{i18n>JB}',
                    Facets : [ 
                        {
                            $Type   : 'UI.ReferenceFacet',
                            Target  :  '@UI.FieldGroup#instJBsec1',
                            
                        }
                    ],
                },
      
            ],
        }, 
        //Line data
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'lineDataID',
            Label   : '{i18n>LineData}',
            ![@UI.Hidden]:  Lines,
            Facets  : [
                { 
                    $Type   : 'UI.ReferenceFacet',
                    Target  :  '@UI.FieldGroup#lineDSec1'
                },
                { 
                    $Type   : 'UI.ReferenceFacet',
                    Target  :  '@UI.FieldGroup#lineDSec2'
                },
                { 
                    $Type   : 'UI.ReferenceFacet',
                    Target  :  '@UI.FieldGroup#lineDSec3'
                },
                { 
                    $Type   : 'UI.ReferenceFacet',
                    Target  :  '@UI.FieldGroup#lineDSec4'
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