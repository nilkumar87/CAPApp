const { create } = require("domain");

const cds = reuire('@sap/cds');

class CustomerInfoService extends cds.ApplicatonService{
init(){

    const {Customers} = this.entities;

    this.before(['CREATE','UPDATE'],Customers,this.validate);

    return super.init();



}

validate(req){

    const data = this.req.data;

    if(data.firstname == ''){

        req.error('Please enter first name');

    }

}

}

module.exports = CustomerInfoService;