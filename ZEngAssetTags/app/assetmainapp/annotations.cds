using CatalogService as service from '../../srv/schema_srv';

annotate service.AssetMain with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Mandt',
            Value : Mandt,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Area',
            Value : Area,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Dlc',
            Value : Dlc,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Fissue',
            Value : Fissue,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Hosign',
            Value : Hosign,
        },
    ]
);
annotate service.AssetMain with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Mandt',
                Value : Mandt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Area',
                Value : Area,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Dlc',
                Value : Dlc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Fissue',
                Value : Fissue,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Hosign',
                Value : Hosign,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Impdat',
                Value : Impdat,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Itag',
                Value : Itag,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Licexp',
                Value : Licexp,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Ponum',
                Value : Ponum,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Sapb',
                Value : Sapb,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Tagrev',
                Value : Tagrev,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Tagsrc',
                Value : Tagsrc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Vendtag',
                Value : Vendtag,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Xissue',
                Value : Xissue,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Ainsp',
                Value : Ainsp,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Apbdy',
                Value : Apbdy,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Gsgrp',
                Value : Gsgrp,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Harea',
                Value : Harea,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Indep',
                Value : Indep,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Mantst',
                Value : Mantst,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Protcl',
                Value : Protcl,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Linesz',
                Value : Linesz,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Rapid',
                Value : Rapid,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Typgen',
                Value : Typgen,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Vlvend',
                Value : Vlvend,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Wgtdry',
                Value : Wgtdry,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Future',
                Value : Future,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Hazflg',
                Value : Hazflg,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Ingrs',
                Value : Ingrs,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Lgflg',
                Value : Lgflg,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Manuf',
                Value : Manuf,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Notifn',
                Value : Notifn,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Model',
                Value : Model,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Prtnum',
                Value : Prtnum,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Pvflg',
                Value : Pvflg,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Ppid',
                Value : Ppid,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Prmthd',
                Value : Prmthd,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Sapflg',
                Value : Sapflg,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Serial',
                Value : Serial,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Suppl',
                Value : Suppl,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Vlvflg',
                Value : Vlvflg,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Wonum',
                Value : Wonum,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Lah',
                Value : Lah,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Lahh',
                Value : Lahh,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Lal',
                Value : Lal,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Lall',
                Value : Lall,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Alhg',
                Value : Alhg,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Alhg2',
                Value : Alhg2,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Tagno',
                Value : Tagno,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Tgroup',
                Value : Tgroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Disc',
                Value : Disc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Tdesc',
                Value : Tdesc,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
