using CatalogService as service from '../services';

annotate service.AssetMain with {
      ID              @UI.Hidden @readonly        @mandatory @UI.ExcludeFromNavigationContext;
      Tagno           @title : '{i18n>Tagno}'   @Core.Immutable  @mandatory;
      Tgroup          @title : '{i18n>Tgroup}'  @Core.Immutable  @mandatory;
      Disc            @title : '{i18n>Disc}' @Core.Immutable;
      Status          @title : '{i18n>Status}' @Core.Immutable;
      Tdesc           @title : '{i18n>Tdesc}' @Core.Immutable; 
};
annotate service.F4_Header with {
      ID              @UI.Hidden @readonly        @mandatory @UI.ExcludeFromNavigationContext;
      Cdgrp           @title : '{i18n>Cdgrp}' @Core.Immutable  @mandatory;
      Cdgrpdsc          @title : '{i18n>Cdgrpdsc}' @Core.Immutable;
};

annotate service.F4_Detail with {
      Code           @title : '{i18n>Code}'  @mandatory;
      Codedsc        @title : '{i18n>Codedsc}'; 
      Codeltxt       @title : '{i18n>Codeltxt}'; 
};