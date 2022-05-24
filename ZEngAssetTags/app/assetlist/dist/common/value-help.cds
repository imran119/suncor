using {
  managed,
  cuid,
  sap.common
} from '@sap/cds/common';
using {edm as schema} from '../../../../db/schema';

annotate schema.ZengMain with {
	Dlc @(
		Common: {
			//show text, not id for mitigation in the context of risks
			Text: Dlc.Codedsc, TextArrangement: #TextOnly,
			ValueListWithFixedValues : true,
            ValueList: {
				Label: '{i18n>Dlc}',
				CollectionPath: 'ZEDF4_Detail11',
				Parameters: [
					{ $Type: 'Common.ValueListParameterInOut',
						LocalDataProperty: Dlc_ID,
						ValueListProperty: 'Cdgrp_ID'
					},
					{ $Type: 'Common.ValueListParameterDisplayOnly',
						ValueListProperty: 'Codeltxt'
					}
				]
			}
		}
	);
};
