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

}
annotate schema.ZengData_Doc with {
Item @title : '{i18n>Item}';
Docno @title : '{i18n>Docno}';
Doctyp @title : '{i18n>Doctyp}';
Doctitle @title : '{i18n>Doctitle}';
Comnt @title : '{i18n>Comnt}';
}


  
