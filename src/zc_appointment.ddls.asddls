@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for  APPOINTMENT'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_APPOINTMENT as projection on ZR_APPOINTMENT
{
    key AppointmentUuid,
    AppointmentId,
    HospitalUuid,
     @Consumption.valueHelpDefinition: [
        { entity: { name: 'ZR_DOCTOR_27', element: 'DoctorUuid' } }
      ]
       DoctorUuid,
     @Consumption.valueHelpDefinition: [
        { entity: { name: 'ZR_PATIENT', element: 'PatientUuid' } }
      ]
    PatientUuid,
    
    AppointmentDate,
    AppointmentTime,
    VisitType,
    CurrencyCode,
     @Semantics.amount.currencyCode: 'CurrencyCode'   
    ConsultationFee,
    PaymentStatus,
    @Consumption.valueHelpDefinition: [
      {
        entity: {
          name: 'ZR_APPOIN_STATUS',
          element: 'StatusId'
        }
      }
    ]
    AppointmentStatus,
    Remarks,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _Hospital : redirected to parent ZC_HOSPITAL
}
