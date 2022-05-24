using {
  managed,
  cuid,
  sap.common
} from '@sap/cds/common';
using {edm as schema} from '../../../../db/schema';

using CatalogService from '../../../../srv/schema_srv';
/*
annotate CatalogService.MainEntity with {
    	Dlc @(
		Common: {
			//show text, not id for mitigation in the context of risks
			//Text: Dlc.Cdgrpdsc, TextArrangement: #TextOnly,
			ValueListWithFixedValues : true,
            ValueList: {
				Label: '{i18n>Dlc}',
				CollectionPath: 'F4_Header',
				Parameters: [
					{   $Type: 'Common.ValueListParameterDisplayOnly',
						ValueListProperty: Dlc.Cdgrpdsc
					}
				]
			}
		}
	);
}; */





//ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID 

annotate CatalogService.MainEntity with {
	Disc @(
		Common: {
			//Text: Disc.Codedsc, TextArrangement: #TextFirst,
			//ValueListWithFixedValues : true,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Dlc}',
				CollectionPath: 'Disc_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },

                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },

            ]
			}
               
		}
	);
    	Phtyp @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Phtyp_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Dlc @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Dlc_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Suppl @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Supply_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Ponum @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Ponum_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		},
        
	);
    Prntag @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Prntag_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Lgflg @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Lgflg_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Pvflg @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Pvflg_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Silvl @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Silvl_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Vlvflg @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Dlc}',
				CollectionPath: 'Vlvflg_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Hazflg @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Hazflg_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Future @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Dlc}',
				CollectionPath: 'Future_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Area @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Dlc}',
				CollectionPath: 'Area_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Iscirc @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Dlc}',
				CollectionPath: 'Iscirc_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Sapb @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Sapb_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Xissue @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Xissue_cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Itag @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Itag_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Impdat @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Impdat_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Hosign @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Hosign_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Docktyp @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Doctyp_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Tstdat @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Tstdat_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Vestyp @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Vestyp_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Cbltyp @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Cbltyp_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Pwrpt @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Pwrpt_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Inscls @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Inscls_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Linesz @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Linesz_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Fail @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Fail_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Ioloc @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Ioloc_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Iosigs @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Iosigs_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Iosigt @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Iosigt_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Iotyp @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Iotyp_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Firezn @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Firezn_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Pipspec @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Pipspec_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Htcirc @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Htcirc_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Frtag @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Frtag_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Totag @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Totag_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Cblcd @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Cvbld_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Cblsys @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Cblsys_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Gld1Fr @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Gldfrom_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Gld1To @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Gldto_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Jbno @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Jbno_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Radome @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Radome_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Scaffold @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Scaffold_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Modult @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Modult_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Cvbld @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Cvbld_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Lckdv @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Lckdv_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Matls @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Matls_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Soursrv @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Soursrv_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Ndepfor @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Ndepfor_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Ndepcas @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Ndepcas_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Accpfor @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Accpfor_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Accpcas @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Accpcas_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Torqt @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Torqt_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Paint @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Paint_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Cmainp @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Cmainp_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Cpressp @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Cpressp_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Pleak @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Pleak_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Firet @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Firect_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Chart @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Chart_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Typgen @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Typgen_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
Critical @(
		Common: {
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Critical_Cl',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly', 
                    ValueListProperty   : 'Code',
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Disc'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Status @(
		Common: {
            ValueListWithFixedValues : true,
             
            //Text: Code, TextArrangement: #TextOnly,
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Status_Cl',
                PresentationVariantQualifier : 'Code',
           
                Parameters     : [

                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Status'
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'Codeltxt',
                },
            ]
			}
               
		}
	);
    Tgroup @(
		Common: {
            ValueListWithFixedValues : true,
            //Text: Code, TextArrangement: #TextOnly,
            ValueList: {
                $Type : 'Common.ValueListType',
				CollectionPath: 'Tagroup_Cl',
                Parameters     : [
                              
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Codedsc',
                    LocalDataProperty   : 'Tgroup'
                }
            ]
			}
               
		}
	);
};  

/*
annotate CatalogService.MainEntity with {
	Disc @(
		Common: {
			//show text, not id for mitigation in the context of risks
			Text: Disc.Codedsc, TextArrangement: #TextFirst,
			ValueListWithFixedValues : true,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Dlc}',
				CollectionPath: 'DiscipleDD',
				Parameters: [
					{ $Type: 'Common.ValueListParameterInOut',
						LocalDataProperty: Disc_ID,
						ValueListProperty: 'ID'
					},
					{ $Type: 'Common.ValueListParameterOut',
                     ValueListProperty   : 'Codedsc',
                     LocalDataProperty   : Disc.Codedsc,
					},
                    { $Type: 'Common.ValueListParameterOut',
                     ValueListProperty   : 'Code',
                     LocalDataProperty   : Disc.Code,
					}
				]
			}
               
		}
	);

}; */


/*
annotate CatalogService.MainEntity with {
	Disc @(
		Common: {
			//show text, not id for mitigation in the context of risks
			Text: Disc.Codedsc, TextArrangement: #TextFirst,
			ValueListWithFixedValues : true,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Dlc}',
				CollectionPath: 'DiscipleDD',
				Parameters: [
					{ $Type: 'Common.ValueListParameterInOut',
						LocalDataProperty: Disc_ID,
						ValueListProperty: 'ID'
					},
					{ $Type: 'Common.ValueListParameterOut',
                     ValueListProperty   : 'Codedsc',
                     LocalDataProperty   : Disc.Codedsc,
					},
                    { $Type: 'Common.ValueListParameterOut',
                     ValueListProperty   : 'Code',
                     LocalDataProperty   : Disc.Code,
					}
				]
			}
               
		}
	);

}; */

annotate CatalogService.DiscipleDD with {
	ID @(
		UI.Hidden,
		/*Common: {
		Text: Codedsc
		}*/
	);
	Cdgrp  @title: 'Code Group';
    Cdgrp_ID @title: 'Code Grp ID';
	Codedsc @title: 'Code Description';
	Code     @title: 'Code';
	Cdgrpdsc    @title: 'Code Group Desc';
    Codeltxt @title : 'Code Text'
}

/*
annotate CatalogService.ZEDF4_Detail with {

	);
    Cdgrp  @title: 'Code Group';
	Codedsc @title: 'Code Description';
	Code     @title: 'Code';
};*/
