using edm from '../db/schema';

service CatalogService  {
 entity MainEntity as projection on edm.ZengMain;
 entity F4_Header as projection on edm.ZEDF4_Header;
 entity F4_Detail as projection on edm.ZEDF4_Detail;

 entity AssetMain as projection on edm.AssetMain;
 entity AssetMainDoc as projection on edm.AssetMain_Doc;
 entity AssetMainHtc as projection on edm.AssetMain_Htc;
 entity AssetMainLin as projection on edm.AssetMain_Lin;

 //entity  AssetMainReport as projection on edm.AssetMain excluding {Apbdy, };
@cds.redirection.target
@readonly
entity AssetMainReport as select from edm.AssetMain;

@readonly
entity AssetMainEQReport as select ID, Tagno, Tgroup, Status, Disc, Tdesc, Tagsrc, Vendtag, Xissue, Ainsp, Gsgrp, Indep from edm.AssetMain;

@readonly
entity AssetMainCABReport as select ID, Tagno, Tgroup, Status, Disc, Tdesc, Alhh, Allw, Alst, Ctrlact, Ctrlfl from edm.AssetMain;

@readonly
entity AssetMainHTReport as select ID, Tagno, Pcumod2, Pcumod, Pcunod, Pcuslv, Tdesc,  Ctrlact, Ctrlfl from edm.AssetMain;



 //entity F4_Detail as projection on edm.ZEDF4_Detail;
 //entity ZEngCLEntity as projection on edm.ZEngCodeList;

/*view DiscipleDD as ( select from edm.ZEngCodeList where Cdgrp = 'Dl' union
select from edm.ZEngCodeList where Cdgrp = 'CL');*/
/*
 view DiscipleDD as select from edm.ZEngCodeList where Cdgrp = 'Dl';
 @cds.redirection.target */
 

 //entity DiscplineValues as projection on edm.ZEDF4_Header1;
/*
 view Join_F4a
       as select from edm.ZEDF4_Header1  
            left join edm.ZEDF4_Detail1
                          on ZEDF4_Header1.Cdgrp = ZEDF4_Detail1.Cdgrp               
              {
                ZEDF4_Header1.Cdgrp, 
                ZEDF4_Detail1.Code, 
                ZEDF4_Detail1.Codedsc,
                };        */  

//view JoinF4 as select from edm.ZEDF4_Detail1 inner join edm.ZEDF4_Header1 hdr on ZEDF4_Detail1.Cdgrp_ID = ZEDF4_Header1.ID where edm.ZEDF4_Header1.Cdgrp = 'DL';
/*
@cds.redirection.target
entity JoinF4 as select from (select from edm.ZEDF4_Detail1) as a; */



//entity JoinF4 as select ID from edm.ZEDF4_Header1 where ID in (select ID from edm.ZEDF4_Detail1);

 //view VLDlc as select from edm.ZEDF4_Detail11 where Cdgrp = (select ID from edm.ZEDF4_Header11 where Cdgrp = 'LALL');
  
 view Disc_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'DISC';
 view Phtyp_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'PHTYP';
 view Dlc_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'DLC';
  view Supply_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'SUPPL';
     view Ponum_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'PONUM';
     view Prntag_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'PRTNAG';
     view Lgflg_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'LGFLG';
view Pvflg_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'PVFLG';
 view Silvl_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'SILVL';
 view Vlvflg_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'VLVFLG';
 view Hazflg_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'HAZFLG';
 view Future_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'FUTURE';
 view Area_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'AREA'; 
view Iscirc_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'ISCIRC';
view Sapb_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'SAPB';
    view Xissue_cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'XISSUE';
    view Fissue_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'FISSUE';
    view Itag_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'ITAG';
    view Impdat_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'IMPDAT';
    view Hosign_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'HOSIGN';
    view Doctyp_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'DOCTYP';
    view Tstdat_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'TSTDAT';
    view Vestyp_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'VESTYP';
    //view Cbltyp_Cl as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'CBLTYP';
    view Pwrpt_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'PWRPT';
    view Inscls_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'INSCLS';
    //view Linesz_Cl as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'LINESZ';
    view Fail_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'FAIL';
    view Ioloc_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'IOLOC';
    view Iosigo_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'IOSIGD';

    view Iosigs_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'IOSIGS';
    view Iosigt_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'IOSIGT';
    view Iotyp_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'IOTYP';
    view Firezn_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'FIREZN';

    view Linesz_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'LINESZ';
    view Pipspec_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'PIPSPEC';
    view Htcirc_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'HTCIRC';
    view Frtag_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'FRTAG';

    view Totag_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'TOTAG';
    view Cblco_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'CBLCD';
    view Cblsys_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'CBLSYS';

    view Gldfrom_Cl
     as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'GLD';
    view Gldto_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'GLD';
    view Jbno_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'JBNO';
    view Radome_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'RADOME';
        view Scaffold_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'SCAFFOLD';
        view Cbltyp_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'CBLTYP';
        view Modult_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'MODULT';
        view Cvbld_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'CVBLD';
        view Lckdv_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'LCKDV';
        view Matls_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'MATLS';
        view Soursrv_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'SOURSRV';
        view Ndepfor_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'NDEPFOR';
            view Ndepcas_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'NDEPCAS';

        view Accpfor_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'ACCPFOR';

        view Accpcas_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'ACCPCAS';
        view Torqt_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'TORQT';
        view Paint_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'PAINT';
        view Cmainp_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'CMAINP';
        view Cpressp_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'CPRESSP';
        view Pleak_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'PLEAK';
        view Firect_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'FIRET';
        view Chart_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'CHART';
        view Note_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'NOTE';
        view Typgen_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'TYPGEN';

        view Critical_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'CRITICAL';

  view Status_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'STATUS' order by Code asc;

view Tagroup_Cl
	as  SELECT from edm.ZEDF4_Header LEFT JOIN edm.ZEDF4_Detail on ZEDF4_Header.ID = ZEDF4_Detail.Cdgrp_ID {  ZEDF4_Header.ID, ZEDF4_Header.Cdgrp, ZEDF4_Header.Cdgrpdsc, ZEDF4_Detail.Cdgrp_ID,ZEDF4_Detail.Code, ZEDF4_Detail.Codedsc, ZEDF4_Detail.Codeltxt  } where ZEDF4_Header.Cdgrp = 'TAGGROUP' order by Code asc;


/*
 view VLDlc as select from edm.ZEDF4_Detail1 
    mixin {
      Grp : Association to edm.ZEDF4_Header1
                    on Grp.Cdgrp = Cdgrp;
    }
    into { Grp.Cdgrp, Grp.Cdgrpdsc, Code, Codedsc, Codeltxt};

*/ 

}