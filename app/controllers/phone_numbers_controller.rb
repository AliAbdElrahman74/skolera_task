class PhoneNumbersController < ApplicationController
  def index
    redirect_to settings_index_path
  end

  def show
    @phone_number = PhoneNumber.find(params[:id])
  end

  def edit
    @phone_number = PhoneNumber.find(params[:id])
  end

  def new
    @phone_number = PhoneNumber.new
  end

  def update
    @phone_number = PhoneNumber.find(params[:id])

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
    @phone_number = PhoneNumber.find(params[:id])
    @phone_number.destroy

    redirect_to settings_index_path
  end

  private

  def phone_number_params
    params.require(:phone_number).permit(:number, :nickname, :enabled)
  end
end
