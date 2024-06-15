namespace db.cap;

using
{
    cuid,
    managed
}
from '@sap/cds/common';

using { db.master } from './master/schema';

entity Requests : cuid, managed
{
    requestNumber : String(10);
    requestStatus : Association to one master.RequestStatus;
}
