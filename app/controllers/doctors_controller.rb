class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    private

    def doctor_params
        #Do I need this thing?
        params.permit(:name, :department)
    end
end