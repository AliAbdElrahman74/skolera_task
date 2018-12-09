class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update, :destroy]

  def index
    @agents = Agent.all
  end

  def show
  end

  def new
    @agent = Agent.new
  end

  def edit
  end

  def create
    @agent = Agent.new(agent_params)

    respond_to do |format|
      if @agent.save
        format.html { redirect_to @agent, notice: 'Agent was successfully created.' }
        format.json { render :show, status: :created, location: @agent }
      else
        format.html { render :new }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @agent.update(agent_params_update)
        format.html { redirect_to @agent, notice: 'Agent was successfully updated.' }
        format.json { render :show, status: :ok, location: @agent }
      else
        format.html { render :edit }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @agent.destroy
    respond_to do |format|
      format.html { redirect_to agents_url, notice: 'Agent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_agent
      @agent = Agent.find(params[:id])
    end

    def agent_params
      params.require(:agent).permit!
    end

    #create this fun to disallow agent change status
    def agent_params_update
      params.require(:agent).permit(:name ,:status)
    end
end
