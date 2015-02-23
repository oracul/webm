class ActsController < ApplicationController
  before_action :set_act, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @acts = Act.all
    respond_with(@acts)
  end

  def show
    respond_with(@act)
  end

  def new
    @act = Act.new
    respond_with(@act)
  end

  def edit
  end

  def create
    @act = Act.new(act_params)
    @act.save
    respond_with(@act)
  end

  def update
    @act.update(act_params)
    respond_with(@act)
  end

  def destroy
    @act.destroy
    respond_with(@act)
  end

  private
    def set_act
      @act = Act.find(params[:id])
    end

    def act_params
      params.require(:act).permit(:category, :description, :date, :userinteraction_id)
    end
end
