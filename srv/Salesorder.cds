using {com.logali as sch} from '../db/schema';

service Order {
    entity salesOrder as
        select from sch.salesOrder.HEADER {
            EMAIL @mandatory,
            FIRSTNAME,
            LASTNAME,
            COUNTRY,
            CREATEON,
            DELIVERYSTATUS,
            ORDERSTATUS,
            IMAGEURL,
            ITEM,
        };
}
