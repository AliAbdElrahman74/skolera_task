class PhoneNumbersController < ApplicationController
  before_action :set_phone_number, only: [:show, :edit, :update, :destroy]

  def index
    @phone_numbers = PhoneNumber.all
  end

  def show
  end

  def edit
  end

  def new
    @phone_number = PhoneNumber.new
  end

  def update
    if @phone_number.update(phone_number_params)
      redirect_to phone_number_path(@phone_number)
    else
      render 'edit'
    end
  end

  def create
    @phone_number = PhoneNumber.new(phone_number_params)

    if @phone_number.save
      redirect_to phone_number_path(@phone_number)
    else
      render 'new'
    end
  end

  def destroy
    @phone_number.destroy

    redirect_to settings_index_path
  end

  private

  def set_phone_number
    @phone_number = PhoneNumber.find(params[:id])
  end

  def phone_number_params
    params.require(:phone_number).permit(:number, :nickname, :enabled)
  end
end
