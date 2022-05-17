// EngineeringDataModule
namespace edm; 

using { managed, cuid, sap, sap.common.CodeList } from '@sap/cds/common';
using {edm.ZENGDATA1, edm.ZENGDATA2, edm.ZENGDATA3, edm.ZENGDATA4,  edm.ZENGDATA5,  edm.ZENGDATA6,  edm.ZENGDATA7,  edm.ZENGDATA8,  edm.ZENGDATA9} from './common';
/*
entity ZEDF4_HEADER {
  key Cdgrp : Cdgrp; 
  Cdgrpdsc : Cdgrpdsc;
  details  : Composition of many ZEDF4_DETAIL on details.Cdgrp = $self;
};

entity ZEDF4_DETAIL {
    key Cdgrp : association to ZEDF4_HEADER;
    key Code   : Code; 
        Codedsc : Codedsc;
        Codeltxt : Codeltxt;
};*/

entity ZengMain:  cuid, ZENGDATA1, ZENGDATA2, ZENGDATA3, ZENGDATA4, ZENGDATA5, ZENGDATA6, ZENGDATA7, ZENGDATA8, ZENGDATA9 {
    docs       : Composition of many ZengData_Doc on docs.Tagno = $self;
    lin        : Composition of many ZengData_Lin on lin.Tagno = $self;
    revs       : Composition of many ZenData_Rev on revs.Tagno = $self;
    nts       : Composition of many ZengData_Nts on nts.Tagno = $self;
    htc       : Composition of many ZenData_Htc on htc.Tagno = $self;
};

entity ZengData_Doc: cuid {
    Mandt     :    String(3);
    Tagno     :    Association to ZengMain;
    Item     :    Integer;
    Docno     :    String(40);
    Doctyp     :    String(10);
    Doctitle     :    String(132);
    Comnt     :    String(40);
};

entity  ZengData_Lin: cuid {
    Tagno     :     Association to ZengMain;
    Etno     :    String(20);
    Linno     :    String(20);
};

entity  ZenData_Htc: cuid {
    Tagno     :     Association to ZengMain; 
    Htcirc     :    String(20);
};

entity  ZenData_Rev: cuid {
    Tagno     :     Association to ZengMain;
    Rev     :    String(3);
    Descr     :    String(40);
    Prep     :    String(3);
    Chk     :    String(3);
    App     :    String(3);
    Dater     :    DateTime;
};

entity  ZengData_Nts: cuid {
    Tagno     : Association to ZengMain;
    Note     :    String(4);
};