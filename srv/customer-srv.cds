using sap.com.customer as db from '../db/Customer-Schema.cds';

service CustomerInfoService @(path:'/CustomerInfo'){

    entity Customer as projection on db.Customer;

}

annotate CustomerInfoService.Customer with {

    firstname @mandatory;

}