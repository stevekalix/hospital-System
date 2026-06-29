@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View Entity for ZPATIENT'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_PATIENT as select from zpatient

association to parent ZR_HOSPITAL as _Hospital
 on $projection.HospitalUuid = _Hospital.HospitalUuid
{
    key patient_uuid as PatientUuid,
    hospital_uuid as HospitalUuid,
    patient_id as PatientId,
    patient_name as PatientName,
    gender as Gender,
    dob as Dob,
    age as Age,
    blood_group as BloodGroup,
    disease as Disease,
      @Consumption.valueHelpDefinition: [
      {
        entity: {
          name: 'ZR_DOCTOR_27',
          element: 'DoctorUuid'
        }
      }
    ]
    doctor_uuid as DoctorUuid,
    phone as Phone,
    email as Email,
    address as Address,
    admission_date as AdmissionDate,
    discharge_date as DischargeDate,
    @Consumption.valueHelpDefinition: [
      {
        entity: {
          name: 'ZR_HOSP_STATUS',
          element: 'Status'
        }
      }
    ]
    status as Status,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt ,
    
    _Hospital
}
