@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View Entity for DOCTOR_27'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.dataCategory: #VALUE_HELP

define view entity ZR_DOCTOR_27 as select from zdoctor_27
association to parent ZR_HOSPITAL as _Hospital 
  on $projection.HospitalUuid = _Hospital.HospitalUuid
{
    key doctor_uuid as DoctorUuid,
    hospital_uuid as HospitalUuid,
    doctor_id as DoctorId,
    doctor_name as DoctorName,
    gender as Gender,
    dob as Dob,
    age as Age,
    specialization as Specialization,
    qualification as Qualification,
    experience as Experience,
    phone as Phone,
    email as Email,
    currency_code as CurrencyCode,
    @Semantics.amount.currencyCode: 'CurrencyCode'   
    consultation_fee as ConsultationFee,
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
