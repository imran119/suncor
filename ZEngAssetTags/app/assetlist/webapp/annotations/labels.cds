using {edm as schema} from '../../../../db/schema';

annotate schema.ZengMain with {
    Tagno     @title :  '{18n>Tagno1}';
    Tgroup    @title :  '{18n>Tgroup1}';
    Status    @title :  '{18n>Status1}';
  
    Area      @title :  '{18n>Area1}';
    Vlvflg    @title : '{i18n>Vlvflg}';
    Dlc       @title : '{i18n>Dlc}';
    Disc      @title : '{i18n>Disc}';
    Ponum     @title : '{i18n>Ponum}';
    Lgflg     @title : '{i18n>Lgflg}';
    Manuf       @title : '{i18n>Manuf}';
    Model   @title : '{i18n>Model}';
    Pvflg   @title : '{i18n>Pvflg}';
    Serial  @title : '{i18n>Serial}';
    Suppl  @title : '{i18n>Suppl}';
    Systm   @title : '{i18n>Systm}';

    Compdsc @title : '{i18n>Compdsc}';
    Prntag @title : '{i18n>Prntag}';
  Tdesc     @title :  '{18n>Tdesc1}';
    Sys @title : '{i18n>Sys}';
    Phtyp  @title : '{i18n>Phtyp}';
    Eqfnr @title : '{i18n>Eqfnr}';

    Hazflg  @title : '{i18n>Hazflg}';
Sapflg @title : '{i18n>Sapflg}';
Silvl   @title : '{i18n>Silvl}';
Sceflg @title : '{i18n>Sceflg}';
Future @title : '{i18n>Future}';
Prmthd @title : '{i18n>Prmthd}';
Ingrs @title : '{i18n>Ingrs}';
Iscirc @title : '{i18n>Iscirc}';
Tcls @title : '{i18n>Tcls}';
Gsgrp @title : '{i18n>Gsgrp}';
Harea @title : '{i18n>Harea}';
Ainsp @title : '{i18n>Ainsp}';

Notifn  @title : '{i18n>Notifn}';
Wonum @title : '{i18n>Wonum}';
Corermk @title : '{i18n>Corermk}' @UI.MultiLineText;


Sapb @title : '{i18n>Sapb}';
Fissue @title : '{i18n>Fissue}';
Xissue @title : '{i18n>Xissue}';
Itag @title : '{i18n>Itag}';
Impdat @title : '{i18n>Impdat}';
Hosign @title : '{i18n>Hosign}';
Tagsrc @title : '{i18n>Tagsrc}';
Vendtag @title : '{i18n>Vendtag}';
Admrmk @title : '{i18n>Admrmk}' @UI.MultiLineText; 

Cblcd @title : '{i18n>Cblcd}';
Cblsys @title : '{i18n>Cblsys}';
Frtag @title : '{i18n>Frtag}';
Gld1Fr @title : '{i18n>Gld1Fr}';
Frdwg @title : '{i18n>Frdwg}';
Frdsc3 @title : '{i18n>Frdsc3}';
Totag @title : '{i18n>Totag}';
Gld1To @title : '{i18n>Gld1To}';
Todwg @title : '{i18n>Todwg}';
Toeqdsc @title : '{i18n>Toeqdsc}';
Rtlen @title : '{i18n>Rtlen}';
Lenest @title : '{i18n>Lenest}';

Dlcdsc @title : '{i18n>Dlcdsc}';
Eqprmk @title : '{i18n>Eqprmk}';
Nderptno @title : '{i18n>Nderptno}';
Swl @title : '{i18n>Swl}';
Minsftr @title : '{i18n>Minsftr}';
Tstdat @title : '{i18n>Tstdat}';
Tstload @title : '{i18n>Tstload}';
Mantst @title : '{i18n>Mantst}';
Indep @title : '{i18n>Indep}';
Wgtdry @title : '{i18n>Wgtdry}';

VessCF @title : '{i18n>VessCF}';
Dimensn @title : '{i18n>Dimensn}';
Vestyp @title : '{i18n>Vestyp}';
Widthdia @title : '{i18n>Widthdia}';
Wgtopr @title : '{i18n>Wgtopr}';


Mawp @title : '{i18n>Mawp}';
Mawt @title : '{i18n>Mawt}';
Mdmt @title : '{i18n>Mdmt}';
Pressr @title : '{i18n>Pressr}';

Pdes @title : '{i18n>Pdes}';
Popr @title : '{i18n>Popr}';
Ptst @title : '{i18n>Ptst}';
Tdes @title : '{i18n>Tdes}';
Topr @title : '{i18n>Topr}';
Pvrmk @title : '{i18n>Pvrmk}';

Elvolt @title : '{i18n>Elvolt}';
Dutykw @title : '{i18n>Dutykw}';
Elecrmk @title : '{i18n>Elecrmk}' @UI.MultiLineText;

Linlgth @title : '{i18n>Linlgth}';
Insthk @title : '{i18n>Insthk}';
Tmpmain @title : '{i18n>Tmpmain}';
Piphtls @title : '{i18n>Piphtls}';
Cbltyp @title : '{i18n>Cbltyp}';
Nopass @title : '{i18n>Nopass}';
Operc @title : '{i18n>Operc}';
Bkgrp @title : '{i18n>Bkgrp}';
Heatout @title : '{i18n>Heatout}';
Totcircl @title : '{i18n>Totcircl}';
Inrcur @title : '{i18n>Inrcur}';
Pwrpt @title : '{i18n>Pwrpt}';
Htcirc @title : '{i18n>Htcirc}';

}
annotate schema.ZengData_Doc with {
Item @title : '{i18n>Item}';
Docno @title : '{i18n>Docno}';
Doctyp @title : '{i18n>Doctyp}';
Doctitle @title : '{i18n>Doctitle}';
Comnt @title : '{i18n>Comnt}';
}

annotate schema.ZEDF4_Header1 with {
Cdgrp @title : '{i18n>Cdgrp}';
Cdgrpdsc @title : '{i18n>Cdgrpdsc}';
};

annotate schema.ZEDF4_Detail1 with {
Code @title : '{i18n>Code}';
Codedsc @title : '{i18n>Codedsc}';
Codeltxt @title : '{i18n>Codeltxt}';
};

  
