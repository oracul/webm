class UserInteractionsController < ApplicationController
  before_action :set_user_interaction, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @user_interactions = UserInteraction.all
    respond_with(@user_interactions)
  end

  def show
    respond_with(@user_interaction)
  end

  def new
    @user_interaction = UserInteraction.new
    respond_with(@user_interaction)
  end

  def edit
  end

  def create
    @user_interaction = UserInteraction.new(user_interaction_params)
    @user_interaction.save
    respond_with(@user_interaction)
  end

  def update
    @user_interaction.update(user_interaction_params)
    respond_with(@user_interaction)
  end

  def destroy
    @user_interaction.destroy
    respond_with(@user_interaction)
  end

  private
    def set_user_interaction
      @user_interaction = UserInteraction.find(params[:id])
    end

    def user_interaction_params
      params.require(:user_interaction).permit(:owner, :user_id, :act_id)
    end
end
