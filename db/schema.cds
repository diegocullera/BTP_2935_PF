namespace com.dmr2935;

using {
    cuid,
    managed
} from '@sap/cds/common';


entity Sales {
    key id           : Integer not null;
        email        : String(40) not null;
        firstname    : String(40);
        lastname     : String(40);
        country      : String(30);
        createon     : Date;
        deliverydate : Date;
        orderstatus  : Integer;
        imageurl     : String(40);
        Items        : Association to many Items
                           on Items.id = $self;
//Item         : Composition of many Items on Item.id = id;
};

entity Items {
    key item_id          : String(36) not null;
    key id               : Association to Sales;
        name             : String(40);
        description      : String(40);
        releasedate      : Date;
        discontinueddate : Date;
        price            : Decimal(12, 2);
        height           : Decimal(15, 3);
        width            : Decimal(13, 3);
        depth            : Decimal(12, 2);
        quantity         : Decimal(16, 2);
        unitofmeasure    : String(2);
};
