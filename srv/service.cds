using { db.cap } from '../db/schema';

using { db.master } from '../db/master/schema';

@path : '/service/cap_request'
service cap_request
{
    annotate RequestStatus
    {
        code
            @Common.Text : 'name';
    }

    @odata.draft.enabled
    entity Requests as
        projection on cap.Requests;

    @readonly
    @UI.TextArrangement : #TextOnly
    entity RequestStatus as
        projection on master.RequestStatus;
}

annotate cap_request with @requires :
[
    'authenticated-user'
];
