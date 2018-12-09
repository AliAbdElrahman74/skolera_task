class PhoneCallsController < ApplicationController
  before_action :set_phone_call, only: [:show, :edit, :update, :destroy]

  def index
    
    @phone_calls = PhoneCall.includes(:phone_number ,:agent ).all  
    
    if params[:status].present?
      @phone_calls = @phone_calls.where(status: params[:status])
    end
  end

  def show
  end

  def new
    @phone_call = PhoneCall.new
  end

  def edit
  end

  def create
    @phone_call = PhoneCall.new(phone_call_params)

    respond_to do |format|
      if @phone_call.save
        format.html { redirect_to @phone_call, notice: 'Phone call was successfully created.' }
        format.json { render :show, status: :created, location: @phone_call }
      else
        format.html { render :new }
        format.json { render json: @phone_call.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @phone_call.update(phone_call_params)
        format.html { redirect_to @phone_call, notice: 'Phone call was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_call }
      else
        format.html { render :edit }
        format.json { render json: @phone_call.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @phone_call.destroy
    respond_to do |format|
      format.html { redirect_to phone_calls_url, notice: 'Phone call was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_phone_call
    @phone_call = PhoneCall.find(params[:id])
  end

  def phone_call_params
    params.require(:phone_call).permit(:status, :phone_number_id, :agent_id)
  end
end
