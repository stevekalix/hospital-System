@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for ZC_PATIENT'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_PATIENT as projection on ZR_PATIENT
{
    key PatientUuid,
    HospitalUuid,
    PatientId,
    PatientName,
    Gender,
    Dob,
    Age,
    BloodGroup,
    Disease,
      @Consumption.valueHelpDefinition: [
      {
        entity: {
          name: 'ZR_DOCTOR_27',
          element: 'DoctorUuid'
        }
      }
    ]
    DoctorUuid,
    Phone,
    Email,
    Address,
    AdmissionDate,
    DischargeDate,
    @Consumption.valueHelpDefinition: [
      {
        entity: {
          name: 'ZR_APPOIN_STATUS',
          element: 'StatusId'
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
