@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for ZR_DOCTOR_27'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_DOCTOR_27 as projection on ZR_DOCTOR_27
{
    key DoctorUuid,
    HospitalUuid,
    DoctorId,
    DoctorName,
     @Consumption.valueHelpDefinition: [
      {
        entity: {
          name: 'ZR_GENDER_VH',
          element: 'GenderName'
        }
      }
    ]
    Gender,
    Dob,
    Age,
    Specialization,
    Qualification,
    Experience,
    Phone,
    Email,
    CurrencyCode,
    @Semantics.amount.currencyCode: 'CurrencyCode'    
    ConsultationFee,
    @Consumption.valueHelpDefinition: [
      {
        entity: {
          name: 'ZR_HOSP_STATUS',
          element: 'Status'
        }
      }
    ]
    Status,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _Hospital  : redirected to parent ZC_HOSPITAL
}
