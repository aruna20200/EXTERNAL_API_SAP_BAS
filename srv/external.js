const cds = require("@sap/cds");
module.exports = cds.service.impl(async function () {
    //Connect Service API_BUSINESS_PARTNER

    const bp = await cds.connect.to("API_BUSINESS_PARTNER");
    this.on("READ", "A_BusinessPartner", async req => {
        return bp.run(req.query);

        //code
    })
    const bp1 = await cds.connect.to("API_BUSINESS_PARTNER");
    this.on("READ", "A_AddressEmailAddress", async req => {
        return bp.run(req.query);
    })
    const bp2 = await cds.connect.to("API_BUSINESS_PARTNER");
    this.on("READ", "A_BusinessPartnerBank", async req => {
        return bp.run(req.query);
    })
    const bp3 = await cds.connect.to("API_BUSINESS_PARTNER");
    this.on("READ", "A_BPDataController", async req => {
        return bp.run(req.query);
    })
})