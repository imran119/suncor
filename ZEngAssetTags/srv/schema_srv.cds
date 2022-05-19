using edm from '../db/schema';

service CatalogService  {

 entity MainEntity as projection on edm.ZengMain;
 entity F4_Header as projection on edm.ZEDF4_Header1;
 entity F4_Detail as projection on edm.ZEDF4_Detail1;

 

 //view VLDlc as select from edm.ZEDF4_Detail11 where Cdgrp = (select ID from edm.ZEDF4_Header11 where Cdgrp = 'LALL');
  
 /*view ZValueList
	as  SELECT from edm.ZEDF4_Header1 LEFT JOIN edm.ZEDF4_Detail1 on ZEDF4_Header1.Cdgrp = ZEDF4_Detail1.Cdgrp {  ZEDF4_Header1.Cdgrp, ZEDF4_Header1.Cdgrpdsc, ZEDF4_Detail1.Code, ZEDF4_Detail1.Codedsc, ZEDF4_Detail1.Codeltxt  };
*/

/*
 view VLDlc as select from edm.ZEDF4_Detail1 
    mixin {
      Grp : Association to edm.ZEDF4_Header1
                    on Grp.Cdgrp = Cdgrp;
    }
    into { Grp.Cdgrp, Grp.Cdgrpdsc, Code, Codedsc, Codeltxt};

*/

}