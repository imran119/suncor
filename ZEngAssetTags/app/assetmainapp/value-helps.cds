using {
  managed,
  cuid,
  sap.common
} from '@sap/cds/common';
using {edm as schema} from '../../db/schema';

using CatalogService as service from '../services';

//ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID 

annotate service.AssetMain with {
	Disc @(
		Common: {
			Text: Disc.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Dlc}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant', //Input parameter used for filtering
                    Constant            : 'Disc',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Disc_Code
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
            Text: Phtyp.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Phtyp}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Phtyp',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Phtyp_Code
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
            Text: Dlc.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Dlc}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Dlc',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Dlc_Code
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
            Text: Suppl.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Suppl}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Suppl',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Suppl_Code
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
            Text: Ponum.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Ponum}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Ponum',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Ponum_Code
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
            Text: Prntag.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Prntag}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Prntag',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   : Prntag_Code
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
            Text: Lgflg.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Lgflg}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Lgflg',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Lgflg_Code
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
            Text: Pvflg.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Pvflg}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Pvflg',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Pvflg_Code
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
            Text: Silvl.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Silvl}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Silvl',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   : Silvl_Code
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
            Text: Vlvflg.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Vlvflg}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Vlvflg',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Vlvflg_Code
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
            Text: Hazflg.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Hazflg}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Hazflg',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Hazflg_Code
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
            Text: Future.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Future}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Future',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Future_Code
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
            Text: Area.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Area}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Area',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Area_Code
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
           Text: Iscirc.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Iscirc}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Iscirc',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Iscirc_Code
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
            Text: Sapb.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Sapb}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Sapb',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   : Sapb_Code
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
           Text: Xissue.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Xissue}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Xissue',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   : Xissue_Code
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
            Text: Itag.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Itag}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Itag',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Itag_Code
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
            Text: Impdat.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Impdat}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Impdat',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Impdat_Code
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
            Text: Hosign.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Hosign}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Hosign',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Hosign_Code
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
            Text: Docktyp.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Docktyp}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Docktyp',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   : Docktyp_Code
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
           Text: Tstdat.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Tstdat}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Tstdat',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Tstdat_Code
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
            Text: Vestyp.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Vestyp}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Vestyp',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Vestyp_Code
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
            Text: Cbltyp.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Cbltyp}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Cbltyp',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Cbltyp_Code
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
            Text: Pwrpt.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Pwrpt}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Pwrpt',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Pwrpt_Code
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
            Text: Inscls.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Inscls}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Inscls',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Inscls_Code
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
            Text: Linesz.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Linesz}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Linesz',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Linesz_Code
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
           Text: Fail.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Fail}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Fail',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Fail_Code
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
             Text: Ioloc.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Ioloc}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Ioloc',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Ioloc_Code
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
            Text: Iosigs.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Iosigs}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Iosigs',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Iosigs_Code
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
            Text: Iosigt.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Iosigt}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Iosigt',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Iosigt_Code
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
            Text: Iotyp.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Iotyp}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Iotyp',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Iotyp_Code
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
            Text: Firezn.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Firezn}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Firezn',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Firezn_Code
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
            Text: Pipspec.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Pipspec}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Pipspec',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Pipspec_Code
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
            Text: Htcirc.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Htcirc}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Htcirc',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Htcirc_Code
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
            Text: Frtag.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Frtag}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Frtag',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Frtag_Code
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
            Text: Disc.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Totag}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Totag',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Totag_Code
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
            Text: Cblcd.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Cblcd}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Cblcd',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Cblcd_Code
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
             Text: Cblsys.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Cblsys}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Cblsys',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   : Cblsys_Code
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
            Text: Gld1Fr.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Gld1Fr}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Gld1Fr',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Gld1Fr_Code
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
            Text: Gld1To.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Gld1To}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Gld1To',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Gld1To_Code
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
           Text: Jbno.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Jbno}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Jbno',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   : Jbno_Code
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
            Text: Radome.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Radome}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Radome',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Radome_Code
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
            Text: Scaffold.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Scaffold}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Scaffold',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Scaffold_Code
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
             Text: Modult.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Modult}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Modult',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Modult_Code
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
            Text: Cvbld.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Cvbld}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Cvbld',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Cvbld_Code
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
            Text: Lckdv.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Lckdv}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Lckdv',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Lckdv_Code
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
            Text: Matls.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Matls}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Matls',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Matls_Code
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
            Text: Soursrv.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Soursrv}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Soursrv',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Soursrv_Code
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
            Text: Ndepfor.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Ndepfor}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Ndepfor',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Ndepfor_Code
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
            Text: Ndepcas.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Ndepcas}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Ndepcas',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Ndepcas_Code
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
            Text: Accpfor.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Accpfor}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Accpfor',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Accpfor_Code
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
           Text: Accpcas.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Accpcas}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Accpcas',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Accpcas_Code
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
            Text: Torqt.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Torqt}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Torqt',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Torqt_Code
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
            Text: Paint.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Paint}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Paint',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Paint_Code
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
            Text: Cmainp.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Cmainp}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Cmainp',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   : Cmainp_Code
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
            Text: Cpressp.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Cpressp}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Cpressp',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Cpressp_Code
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
           Text: Pleak.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Pleak}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Pleak',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Pleak_Code
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
           Text: Firet.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Firet}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Firet',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Firet_Code
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
           Text: Chart.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Chart}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Chart',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   : Chart_Code
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
           Text: Typgen.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Typgen}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Typgen',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Typgen_Code
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
           Text: Critical.Codedsc, TextArrangement: #TextFirst,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Critical}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Critical',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Critical_Code
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
            Text: Status.Codedsc, TextArrangement: #TextOnly,
            ValueListWithFixedValues : true,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Status}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Status',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Status_Code
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
            Text: Tgroup.Codedsc, TextArrangement: #TextOnly,
            ValueListWithFixedValues : true,
            ValueList: {
                $Type : 'Common.ValueListType',
				Label: '{i18n>Tgroup}',
				CollectionPath: 'F4_Detail',
                Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterConstant',
                    Constant            : 'Tgroup',
                    ValueListProperty   : 'Cdgrp_Cdgrp', 
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'Code',
                    LocalDataProperty   :  Tgroup_Code
                }

            ]
			}
		}
	);
};   

/*
annotate service.AssetMain with {
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
annotate service.AssetMain with {
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
annotate service.DiscipleDD with {
	ID @(
		UI.Hidden,
		/*Common: {
		Text: Codedsc
		}*/
	
	/*Cdgrp  @title: 'Code Group';
    Cdgrp_ID @title: 'Code Grp ID';
	Codedsc @title: 'Code Description';
	Code     @title: 'Code';
	Cdgrpdsc    @title: 'Code Group Desc';
    Codeltxt @title : 'Code Text'
} */

/*
annotate service.ZEDF4_Detail with {

	);
    Cdgrp  @title: 'Code Group';
	Codedsc @title: 'Code Description';
	Code     @title: 'Code';
};*/
