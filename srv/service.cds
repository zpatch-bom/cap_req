using {db.cap} from '../db/schema';
using {db.master} from '../db/master/schema';

@path: '/service/cap_request'
service cap_request {
    annotate RequestStatus {
        code
        @Common.Text: 'name';
    }

    @odata.draft.enabled
    @Common.DraftRoot: {
        NewAction       : 'createDraft',
        ActivationAction: 'myActivationAction',
    }
    entity Requests      as projection on cap.Requests
        actions {
            // @odata.bin
            action createDraft(in1 : String(3)) returns Requests;
        };

    @readonly
    @UI.TextArrangement: #TextOnly
    entity RequestStatus as projection on master.RequestStatus;
}

annotate cap_request with @requires: ['authenticated-user'];
