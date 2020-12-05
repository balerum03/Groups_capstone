class GroupsController < ApplicationController
  before_action :set_group, only: %i[show edit update destroy group_items]
  before_action :login?
  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all.includes(image_attachment: :blob)
  end
  
  # GET /groups/new
  def new
    @group = Group.new
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to groups_path, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end


  def group_items
    @e_items = @group.items
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_group
    @group = Group.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def group_params
    params.require(:group).permit(:name, :image, :user_id)
  end
end
