class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  before_action :login?, only: %i[show edit update destroy index my_items my_external_items]

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to groups_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
        session[:user_id] = @user.id
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def my_items
    @items = []
    Item.where(author_id: current_user.id).includes(groups: { image_attachment: [:blob] }).reverse_order.each do |item|
      @items << item unless item.groups.empty?
    end
  end

  def my_external_items
    @e_items = []
    Item.where(author_id: current_user.id).includes(groups: { image_attachment: [:blob] }).reverse_order.each do |item|
      @e_items << item if item.groups.empty?
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:user_name)
  end
end
