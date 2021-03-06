%%%-------------------------------------------------------------------
%%% @author Juan Jose Comellas <juanjo@comellas.org>
%%% @copyright (C) 2011 Juan Jose Comellas
%%% @doc Module that parses and generates segments for HL7 messages.
%%% @end
%%%
%%% This file was autogenerated. DO NOT MODIFY.
%%%-------------------------------------------------------------------

%% AUT: Authorization information
-record(aut, {
          plan_id :: binary() | undefined,
          plan_name :: binary() | undefined,
          company_id :: binary() | undefined,
          company_name :: binary() | undefined,
          company_id_coding_system :: binary() | undefined,
          start_date :: calendar:date() | undefined,
          end_date :: calendar:date() | undefined,
          authorization_id :: binary() | undefined,
          requested_treatments :: integer() | undefined,
          authorized_treatments :: integer() | undefined
         }).

%% DG1: Diagnosis information
-record(dg1, {
          set_id :: integer() | undefined,
          diagnosis_id :: binary() | undefined,
          name :: binary() | undefined,
          coding_system :: binary() | undefined,
          diagnosis_type :: binary() | undefined
         }).

%% DSC: Continuation pointer
-record(dsc, {
          continuation_pointer :: binary() | undefined
         }).

%% DSP: Display data
-record(dsp, {
          set_id :: integer() | undefined,
          display_level :: binary() | undefined,
          data_line :: binary() | undefined,
          break_point :: binary() | undefined,
          result_id :: binary() | undefined
         }).

%% ERR: Error information
-record(err, {
          segment_id :: binary() | undefined,
          sequence :: integer() | undefined,
          field_pos :: integer() | undefined,
          error_code :: binary() | undefined,
          error_text :: binary() | undefined
         }).

%% EVN: Event type
-record(evn, {
          recorded_date :: calendar:datetime() | undefined,
          planned_event_date :: calendar:datetime() | undefined,
          event_reason_code :: binary() | undefined
         }).

%% IN1: Insurance
-record(in1, {
          set_id :: integer() | undefined,
          plan_id :: binary() | undefined,
          plan_name :: binary() | undefined,
          company_id :: binary() | undefined,
          company_assigning_authority_id :: binary() | undefined,
          company_id_type :: binary() | undefined,
          authorization_number :: binary() | undefined,
          auhtorization_date :: calendar:date() | undefined
         }).

%% MSA: Message acknowledgment
-record(msa, {
          ack_code :: binary() | undefined,
          message_control_id :: binary() | undefined,
          error_code :: binary() | undefined,
          error_text :: binary() | undefined
         }).

%% MSH: Message header
-record(msh, {
          field_separator :: binary() | undefined,
          encoding_characters :: binary() | undefined,
          sending_application_id :: binary() | undefined,
          sending_facility_id :: binary() | undefined,
          sending_facility_universal_id :: binary() | undefined,
          sending_facility_universal_id_type :: binary() | undefined,
          receiving_application_id :: binary() | undefined,
          receiving_facility_id :: binary() | undefined,
          receiving_facility_universal_id :: binary() | undefined,
          receiving_facility_universal_id_type :: binary() | undefined,
          message_date :: calendar:datetime() | undefined,
          message_type :: binary() | undefined,
          trigger_event :: binary() | undefined,
          message_structure :: binary() | undefined,
          message_control_id :: binary() | undefined,
          processing_id :: binary() | undefined,
          version :: binary() | undefined,
          accept_ack_type :: binary() | undefined,
          application_ack_type :: binary() | undefined,
          country_code :: binary() | undefined
         }).

%% NTE: Notes and comments
-record(nte, {
          set_id :: integer() | undefined,
          comment :: binary() | undefined
         }).

%% PID: Patient information
-record(pid, {
          set_id :: integer() | undefined,
          patient_id :: binary() | undefined,
          assigning_authority_id :: binary() | undefined,
          assigning_authority_universal_id :: binary() | undefined,
          assigning_authority_universal_id_type :: binary() | undefined,
          id_type :: binary() | undefined,
          patient_document_id :: binary() | undefined,
          patient_document_id_type :: binary() | undefined,
          last_name :: binary() | undefined,
          first_name :: binary() | undefined
         }).

%% PR1: Procedure information
-record(pr1, {
          set_id :: integer() | undefined,
          procedure_id :: binary() | undefined,
          procedure_name :: binary() | undefined,
          coding_system :: binary() | undefined,
          date :: calendar:datetime() | undefined
         }).

%% PRD: Provider data
-record(prd, {
          role_id :: binary() | undefined,
          role_name :: binary() | undefined,
          role_coding_system :: binary() | undefined,
          specialty_id :: binary() | undefined,
          specialty_name :: binary() | undefined,
          specialty_coding_system :: binary() | undefined,
          last_name :: binary() | undefined,
          first_name :: binary() | undefined,
          street :: binary() | undefined,
          other_designation :: binary() | undefined,
          city :: binary() | undefined,
          state :: binary() | undefined,
          postal_code :: binary() | undefined,
          country_code :: binary() | undefined,
          address_type :: binary() | undefined,
          provider_id :: binary() | undefined,
          provider_id_type :: binary() | undefined,
          provider_id_type_medical :: binary() | undefined,
          provider_id_type_province :: binary() | undefined,
          provider_id_alternate_qualifier :: binary() | undefined
         }).

%% PV1: Patient visit
-record(pv1, {
          set_id :: binary() | undefined,
          patient_class :: binary() | undefined,
          patient_point_of_care :: binary() | undefined,
          patient_location_facility :: binary() | undefined,
          admission_type :: binary() | undefined,
          attending_doctor_id :: binary() | undefined,
          attending_doctor_last_name :: binary() | undefined,
          attending_doctor_first_name :: binary() | undefined,
          attending_doctor_assigning_authority :: binary() | undefined,
          referring_doctor_id :: binary() | undefined,
          referring_doctor_last_name :: binary() | undefined,
          referring_doctor_first_name :: binary() | undefined,
          referring_doctor_assigning_authority :: binary() | undefined,
          hospital_service :: binary() | undefined,
          readmission_indicator :: binary() | undefined,
          discharge_diposition :: binary() | undefined,
          admit_date :: calendar:datetime() | undefined,
          discharge_date :: calendar:datetime() | undefined,
          visit_indicator :: binary() | undefined
         }).

%% PV2: Patient visit - additional information
-record(pv2, {
          transfer_reason_id :: binary() | undefined
         }).

%% QAK: Query acknowledgment
-record(qak, {
          query_tag :: binary() | undefined,
          query_response_status :: binary() | undefined,
          query_id :: binary() | undefined,
          query_name :: binary() | undefined
         }).

%% QPD_Q15: Query parameter definition -- procedure totals query
-record(qpd_q15, {
          query_id :: binary() | undefined,
          query_name :: binary() | undefined,
          query_tag :: binary() | undefined,
          provider_id :: binary() | undefined,
          provider_id_type :: binary() | undefined,
          start_date :: calendar:datetime() | undefined,
          end_date :: calendar:datetime() | undefined,
          procedure_id :: binary() | undefined,
          procedure_coding_system :: binary() | undefined,
          authorizer_id :: binary() | undefined
         }).

%% RCP: Response control parameter
-record(rcp, {
          query_priority :: binary() | undefined,
          response_limit :: integer() | undefined,
          response_unit :: binary() | undefined,
          response_modality_id :: binary() | undefined,
          execution_date :: calendar:datetime() | undefined,
          sort_by :: binary() | undefined
         }).

%% RF1: Referral information
-record(rf1, {
          referral_status_id :: binary() | undefined,
          referral_status_description :: binary() | undefined,
          referral_type_id :: binary() | undefined,
          referral_type_description :: binary() | undefined,
          originating_referral_id :: binary() | undefined,
          effective_date :: calendar:datetime() | undefined,
          expiration_date :: calendar:datetime() | undefined,
          process_date :: calendar:datetime() | undefined,
          referral_reason_id :: binary() | undefined
         }).

%% ZAU: Procedure authorization information
-record(zau, {
          prev_authorization_id :: binary() | undefined,
          payor_control_id :: binary() | undefined,
          authorization_status :: binary() | undefined,
          authorization_status_text :: binary() | undefined,
          pre_authorization_id :: binary() | undefined,
          pre_authorization_date :: binary() | undefined,
          copay :: float() | undefined,
          copay_currency :: binary() | undefined
         }).

%% ZIN: Additional insurance information
-record(zin, {
          eligibility_indicator :: binary() | undefined,
          patient_vat_status :: binary() | undefined,
          patient_vat_status_text :: binary() | undefined
         }).
