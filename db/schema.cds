namespace com.logali;

entity HEADER {
    key ID             : String @Core.Computed;
    key EMAIL          : String;
        FIRSTNAME      : String;
        LASTNAME       : String;
        COUNTRY        : String;
        CREATEON       : Date default $now;
        DELIVERYSTATUS : DateTime default $now;
        ORDERSTATUS    : Integer;
        IMAGEURL       : String;
        ITEMS          : Composition of ITEMS;
};

entity ITEMS {
    key ID          : String @Core.Computed;
    NAME            : String;
    DESCRIPTION     : String;
    RELEASEDATE     : Date default $now;
    DISCONTINUEDATE : Date default $now;
    PRICE           : Decimal(12, 2);
};
