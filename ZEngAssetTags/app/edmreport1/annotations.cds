using CatalogService as service from '../../srv/schema_srv';
using from './header';
using from './core-data';
using from './admin-data';
using from './cables-data';
using from './equip-data';
using from './instruments-data';
using from './line-data';
using from './heat-data';

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
annotate service.AssetMainReport with @(
    UI.HeaderInfo :{
        TypeName        : 'AssetTag',
        TypeNamePlural  : 'Asset Tags',
        Title           : {
            $Type : 'UI.DataField',
            Value : Tgroup_Code,
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
annotate service.AssetMainReport with @(
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

annotate service.AssetMainReport with @( 
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




   
