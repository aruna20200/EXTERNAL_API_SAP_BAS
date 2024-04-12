// [15:30] Rajesh N
using {API_BUSINESS_PARTNER as external} from './external/API_BUSINESS_PARTNER';


service ExternalService {

    entity A_BusinessPartner     as
        projection on external.A_BusinessPartner {
            BusinessPartner,
            Customer,
            BusinessPartnerFullName,
            BusinessPartnerGrouping,
            BusinessPartnerUUID,
            OrganizationBPName1,
            BirthDate
        };

    entity A_AddressEmailAddress as
        projection on external.A_AddressEmailAddress {
            AddressID,
            EmailAddress
        };

    entity A_BusinessPartnerBank as
        projection on external.A_BusinessPartnerBank {
            BankIdentification,
            BusinessPartner,
            BankAccount,
            BankAccountHolderName

        };

    entity A_BPDataController    as
        projection on external.A_BPDataController {
            BusinessPartner,
            DataController,
            PurposeForPersonalData,
            PurposeDerived

        };


}
