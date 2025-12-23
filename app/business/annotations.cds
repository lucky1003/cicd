using CatalogService as service from '../../srv/service';
annotate service.BusinessPartners with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'BPID',
                Value : BPID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BPName',
                Value : BPName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BPType',
                Value : BPType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country',
                Value : Country,
            },
            {
                $Type : 'UI.DataField',
                Label : 'City',
                Value : City,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Phone',
                Value : Phone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : Email,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'BPID',
            Value : BPID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BPName',
            Value : BPName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BPType',
            Value : BPType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Country',
            Value : Country,
        },
        {
            $Type : 'UI.DataField',
            Label : 'City',
            Value : City,
        },
    ],
);

