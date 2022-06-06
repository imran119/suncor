// EngineeringDataModule
namespace edm; 

using { managed, cuid, sap, sap.common.CodeList } from '@sap/cds/common';
using {edm.ZENGDATA1, edm.ZENGDATA2, edm.ZENGDATA3, edm.ZENGDATA4,  edm.ZENGDATA5,  edm.ZENGDATA6,  edm.ZENGDATA7,  edm.ZENGDATA8,  edm.ZENGDATA9, edm.VirtualFlags} from './common';
type Cdgrp          :    String(15);
type Code           :    Integer;
type Codedsc        :    String(120);
type Codeltxt       :    String(190);
type Cdgrpdsc       :    String(40);


entity ZEDF4_Header {
   key Cdgrp : Cdgrp; 
    Cdgrpdsc : Cdgrpdsc;
    details  : Composition of many ZEDF4_Detail on details.Cdgrp = $self;
};

entity ZEDF4_Detail { 
    key Code   : Code;
    Cdgrp : Association to one ZEDF4_Header;      
    Codedsc : Codedsc;
    Codeltxt : Codeltxt;
};

entity AssetMain:  cuid, ZENGDATA1, ZENGDATA2, ZENGDATA3, ZENGDATA4, ZENGDATA5, ZENGDATA6, ZENGDATA7, ZENGDATA8, ZENGDATA9, VirtualFlags {
    Tagno       :    String(27);
    Tgroup      :    Association to one ZEDF4_Detail;
    Status      :    Association to one ZEDF4_Detail;
    Disc        :    Association to one ZEDF4_Detail;
    Tdesc       :    String(80);
    docs        :    Composition of many AssetMain_Doc on docs.Tagno = $self;
    lin         :    Composition of many AssetMain_Lin on lin.Tagno = $self;
    revs        :    Composition of many AssetMain_Rev on revs.Tagno = $self;
    nts         :    Composition of many AssetMain_Nts on nts.Tagno = $self;
    htc         :    Composition of many AssetMain_Htc on htc.Tagno = $self;

};
entity AssetMain_Doc: cuid {
    Mandt       :    String(3);
    Tagno       :    Association to AssetMain;
    Item        :    Integer;
    Docno       :    String(40);
    Doctyp      :    String(10);
    Doctitle    :    String(132);
    Comnt       :    String(40);
};

entity  AssetMain_Lin: cuid {
    Tagno       :     Association to AssetMain;
    Etno        :    String(20);
    Linno       :    String(20);
};

entity  AssetMain_Htc: cuid {
    Tagno     :     Association to AssetMain; 
    Htcirc     :    String(20);
};

entity  AssetMain_Rev: cuid {
    Tagno     :     Association to AssetMain;
    Rev     :    String(3);
    Descr     :    String(40);
    Prep     :    String(3);
    Chk     :    String(3);
    App     :    String(3);
    Dater     :    DateTime;
};

entity  AssetMain_Nts: cuid {
    Tagno     : Association to AssetMain;
    Note     :    String(4);
};


entity ZengData_Doc: cuid {
    Mandt     :    String(3);
    Tagno     :    Association to AssetMain;
    Item     :    Integer;
    Docno     :    String(40);
    Doctyp     :    String(10);
    Doctitle     :    String(132);
    Comnt     :    String(40);
};

entity  ZengData_Lin: cuid {
    Tagno     :     Association to AssetMain;
    Etno     :    String(20);
    Linno     :    String(20);
};

entity  ZenData_Htc: cuid {
    Tagno     :     Association to AssetMain; 
    Htcirc     :    String(20);
};

entity  ZenData_Rev: cuid {
    Tagno     :     Association to AssetMain;
    Rev     :    String(3);
    Descr     :    String(40);
    Prep     :    String(3);
    Chk     :    String(3);
    App     :    String(3);
    Dater     :    DateTime;
};

entity  ZengData_Nts: cuid {
    Tagno     : Association to AssetMain;
    Note     :    String(4);
};