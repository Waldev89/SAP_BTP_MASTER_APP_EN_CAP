using Mangeorders as service from '../../srv/orders';

annotate service.salesOrder with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'EMAIL',
            Value : EMAIL,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FIRSTNAME',
            Value : FIRSTNAME,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LASTNAME',
            Value : LASTNAME,
        },
        {
            $Type : 'UI.DataField',
            Label : 'COUNTRY',
            Value : COUNTRY,
        },
    ]
);
annotate service.salesOrder with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EMAIL',
                Value : EMAIL,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FIRSTNAME',
                Value : FIRSTNAME,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LASTNAME',
                Value : LASTNAME,
            },
            {
                $Type : 'UI.DataField',
                Label : 'COUNTRY',
                Value : COUNTRY,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CREATEON',
                Value : CREATEON,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DELIVERYSTATUS',
                Value : DELIVERYSTATUS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ORDERSTATUS',
                Value : ORDERSTATUS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IMAGEURL',
                Value : IMAGEURL,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ITEMS_ID',
                Value : ITEMS_ID,
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
