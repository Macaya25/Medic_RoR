class ApplicationController < ActionController::Base

    def schedule
        # Lógica para obtener las especialidades y clínicas disponibles
        @specialties = Specialty.all
        #@clinics = Clinic.all
    end
    def search_availability
        specialty_id = params[:appointment][:specialty_id]
        #clinic_id = params[:appointment][:clinic_id]
        appointment_date = params[:appointment][:appointment_date]
      
        # Lógica para encontrar las horas disponibles para la especialidad, clínica y fecha seleccionadas
        @available_hours = Appointment.available_hours(specialty_id, clinic_id, appointment_date)
        @available_hours = Appointment.available_hours(specialty_id, appointment_date)

      
        # Renderizar la vista con las horas disponibles
        render 'availability'
    end
  
end
