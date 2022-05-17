using edm from '../db/schema';

service CatalogService  {

 entity MainEntity as projection on edm.ZengMain;

}