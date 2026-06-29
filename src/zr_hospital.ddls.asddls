@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View Entity for ZR_HOSPITAL'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_HOSPITAL as select from zhospital
composition [0..*]of  ZR_DOCTOR_27 as _doctor
composition [0..*]of  ZR_PATIENT as _patient
composition [0..*]of  ZR_APPOINTMENT as _appointment
{
    key hospital_uuid as HospitalUuid,
    hospital_id as HospitalId,
    hospital_name as HospitalName,
    hospital_type as HospitalType,
    city as City,
    state as State,
    country as Country,
    phone as Phone,
    email as Email,
     @Consumption.valueHelpDefinition: [
      {
        entity: {
          name: 'ZR_HOSP_STATUS',
          element: 'Status'
        }
      }
    ]
    status as Status,
    total_doctors as TotalDoctors,
    total_patients as TotalPatients,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    
    _doctor,
    _patient,
    _appointment
}
