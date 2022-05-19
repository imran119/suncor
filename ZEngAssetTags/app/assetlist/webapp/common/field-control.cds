using CatalogService from '../../../../srv/schema_srv';

annotate CatalogService.MainEntity with {
      ID              @UI.Hidden @readonly        @mandatory @UI.ExcludeFromNavigationContext;
      Tagno           @title : '{i18n>Tagno}' @Core.Immutable  @mandatory;
      Tgroup          @title : '{i18n>Tgroup}' @Core.Immutable  @mandatory;
      Status          @title : '{i18n>Status}' @Core.Immutable;
      Tdesc           @title : '{i18n>Tdesc}' @Core.Immutable;
      Disc            @title : '{i18n>Disc}' @Core.Immutable;
};
