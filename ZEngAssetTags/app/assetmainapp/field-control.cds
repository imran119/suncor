using CatalogService as service from '../services';

annotate service.AssetMain with {
      ID              @UI.Hidden @readonly        @mandatory @UI.ExcludeFromNavigationContext;
      Tagno           @title : '{i18n>Tagno}'   @Core.Immutable  @mandatory;
      Tgroup          @title : '{i18n>Tgroup}'  @Core.Immutable  @mandatory;
      Disc           @title : '{i18n>Disc}' @Core.Immutable;
      Status          @title : '{i18n>Status}' @Core.Immutable;
      Tdesc           @title : '{i18n>Tdesc}' @Core.Immutable; 
};
