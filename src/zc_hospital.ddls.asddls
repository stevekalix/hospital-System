@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for ZR_HOSPITAL'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_HOSPITAL as projection on ZR_HOSPITAL
{
    key HospitalUuid,
    HospitalId,
    HospitalName,
    HospitalType,
    City,
    State,
    Country,
    Phone,
    Email,
     @Consumption.valueHelpDefinition: [
      {
        entity: {
          name: 'ZR_HOSP_STATUS',
          element: 'Status'
        }
      }
    ]
    Status,
    TotalDoctors,
    TotalPatients,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _doctor : redirected to composition child ZC_DOCTOR_27 ,
    _patient : redirected to composition child ZC_PATIENT ,
    _appointment: redirected to composition child ZC_APPOINTMENT
}
