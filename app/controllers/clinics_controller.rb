# frozen_string_literal: true

class ClinicsController < ApplicationController
  def index
    @clinics = Clinic.all
  end

  def new
    @clinic ||= Clinic.new
  end

  def show; end

  def update; end

  def create
    # binding.pry
    required_params = params.require(:clinic).permit(:name, :location)
    # binding.pry
    @clinic = Clinic.new(required_params)
    if @clinic.save
      redirect_to clinics_path
    else
      render :new
    end
  end

  def destroy; end
end
