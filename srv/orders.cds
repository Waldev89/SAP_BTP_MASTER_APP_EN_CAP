using com.logali as sch from '../db/schema';

define service Mangeorders {
    entity salesOrder   as projection on sch.HEADER;
    entity CreateOrders as projection on sch.HEADER;
}
