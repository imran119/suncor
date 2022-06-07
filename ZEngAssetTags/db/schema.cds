// EngineeringDataModule
namespace edm;

using {
    managed,
    cuid,
    sap,
    sap.common.CodeList
} from '@sap/cds/common';
using {
    edm.ZENGDATA1,
    edm.ZENGDATA2,
    edm.ZENGDATA3,
    edm.ZENGDATA4,
    edm.ZENGDATA5,
    edm.ZENGDATA6,
    edm.ZENGDATA7,
    edm.ZENGDATA8,
    edm.ZENGDATA9,
    edm.VirtualFlags
} from './common';


entity ZEDF4_Header : managed {
    key Cdgrp    : String(15) @title : '{i18n>Cdgrp}';
        Cdgrpdsc : String(40) @title : '{i18n>Cdgrpdsc}';
        details  : Composition of many ZEDF4_Detail
                       on details.Cdgrp = $self;
};

entity ZEDF4_Detail : managed {
    key Code     : Integer                         @title : '{i18n>Code}';
        Cdgrp    : Association to one ZEDF4_Header @title : '{i18n>Cdgrp}';
        Codedsc  : String(120)                     @title : '{i18n>Codedsc}';
        Codeltxt : String(190)                     @title : '{i18n>Codeltxt}';
};


entity AssetMain : cuid, ZENGDATA1, ZENGDATA2, ZENGDATA3, ZENGDATA4, ZENGDATA5, ZENGDATA6, ZENGDATA7, ZENGDATA8, ZENGDATA9, VirtualFlags, managed {
    docs : Composition of many AssetMain_Doc
               on docs.Tagno = $self;
    lin  : Composition of many AssetMain_Lin
               on lin.Tagno = $self;
    revs : Composition of many AssetMain_Rev
               on revs.Tagno = $self;
    nts  : Composition of many AssetMain_Nts
               on nts.Tagno = $self;
    htc  : Composition of many AssetMain_Htc
               on htc.Tagno = $self;

};

entity AssetMain_Doc : cuid {
    Tagno    : Association to AssetMain;
    Item     : Integer     @title : '{i18n>Item}';
    Docno    : String(40)  @title : '{i18n>Docno}';
    Doctyp   : String(10)  @title : '{i18n>Doctyp}';
    Doctitle : String(132) @title : '{i18n>Doctitle}';
    Comnt    : String(40)  @title : '{i18n>Comnt}';
};

entity AssetMain_Lin : cuid {
    Tagno : Association to AssetMain;
    Etno  : String(20) @title : '{i18n>Etno}';
    Linno : String(20) @title : '{i18n>Linno}';
};

entity AssetMain_Htc : cuid {
    Tagno  : Association to AssetMain;
    Htcirc : String(20) @title : '{i18n>Htcirc}';
};

entity AssetMain_Rev : cuid {
    Tagno : Association to AssetMain;
    Rev   : String(3)  @title : '{i18n>Rev}';
    Descr : String(40) @title : '{i18n>Descr}';
    Prep  : String(3)  @title : '{i18n>Prep}';
    Chk   : String(3)  @title : '{i18n>Chk}';
    App   : String(3)  @title : '{i18n>App}';
    Dater : DateTime   @title : '{i18n>Dater}';
};

entity AssetMain_Nts : cuid {
    Tagno : Association to AssetMain;
    Note  : String(4) @title : '{i18n>Note}';
};
