namespace db.master;


using {sap.common.CodeList} from '@sap/cds/common';

entity RequestStatus : CodeList {
    key code              : String(2) enum {
            New       = '01';
            Submitted = '02';
        };
        hideReviewButtom  : Boolean;
        hideEndorseButtom : Boolean;
}
