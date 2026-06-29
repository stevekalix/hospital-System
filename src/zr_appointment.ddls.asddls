@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View Entity for  APPOINTMENT'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_APPOINTMENT as select from zappointment 

association to parent ZR_HOSPITAL as _Hospital 
on $projection.HospitalUuid = _Hospital.HospitalUuid

//  association [0..1] to ZR_DOCTOR as _Doctor
//    on $projection.DoctorUuid = _doctor.DoctorUuid 
//
//  association [0..1] to ZR_PATIENT as _Patient
//    on $projection.PatientUuid = _Patient.PatientUuid
{
    key appointment_uuid as AppointmentUuid,
    appointment_id as AppointmentId,
    hospital_uuid as HospitalUuid,
      @Consumption.valueHelpDefinition: [
        { entity: { name: 'ZR_DOCTOR_27', element: 'DoctorUuid' } }
      ]
    doctor_uuid as DoctorUuid,
     @Consumption.valueHelpDefinition: [
        { entity: { name: 'ZR_PATIENT', element: 'PatientUuid' } }
      ]
    patient_uuid as PatientUuid,
    appointment_date as AppointmentDate,
    appointment_time as AppointmentTime,
    visit_type as VisitType,
    currency_code as CurrencyCode,
    @Semantics.amount.currencyCode: 'CurrencyCode'   
    consultation_fee as ConsultationFee,
    @Consumption.valueHelpDefinition: [
      {
        entity: {
          name: 'ZR_APPOIN_STATUS',
          element: 'StatusId'
        }
      }
    ]
    payment_status as PaymentStatus,
    appointment_status as AppointmentStatus,
    remarks as Remarks,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    
    _Hospital
    
}
