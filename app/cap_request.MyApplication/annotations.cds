using cap_request as service from '../../srv/service';
annotate service.Requests with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'requestNumber',
                Value : requestNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'requestStatus_code',
                Value : requestStatus_code,
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
            Label : 'requestNumber',
            Value : requestNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'requestStatus_code',
            Value : requestStatus_code,
        },
    ],
);

