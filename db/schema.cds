namespace com.logali;

using {cuid} from '@sap/cds/common';

context salesOrder {

    entity HEADER : cuid {
        key EMAIL          : String;
            FIRSTNAME      : String;
            LASTNAME       : String;
            COUNTRY        : String;
            CREATEON       : Date default $now;
            DELIVERYSTATUS : DateTime default $now;
            ORDERSTATUS    : Integer;
            IMAGEURL       : String;
            ITEM           : Composition of many ITEMS
                                 on ITEM.HEADER = $self
    };

    entity ITEMS : cuid {
        NAME            : String;
        DESCRIPTION     : String;
        RELEASEDATE     : Date default $now;
        DISCONTINUEDATE : Date default $now;
        PRICE           : Decimal(12, 2);
        HEADER          : Association to HEADER;
    };

}
