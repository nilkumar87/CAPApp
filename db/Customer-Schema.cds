namespace sap.com.customer;
using {cuid,managed,sap.common.CodeList} from '@sap/cds/common';
entity Customer:cuid,managed{
    firstname : String;
    lastname : String;
    gender : Genere;

}

type Genere:CodeList{
    code : String;
    desc : String;

}