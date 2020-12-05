class ItemsController < ApplicationController
  before_action :set_item, only: %i[show edit update destroy]
  before_action :login?
  
  # GET /items/new
  def new
    @item = Item.new
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to my_external_items_path(current_user.id), notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def item_params
    params.require(:item).permit(:author_id, :name, :amount, group_ids:[])
  end
end
