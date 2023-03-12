class OwnersController < ApplicationController
  # before_action :set_owner, only: %i[ show edit update destroy ]

  def index
    @owners = Owner.all
  end

  def create
    @owner = Owner.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
  end

  # respond_to do |format|
  #   if @owner.save
  #     format.html { redirect_to owner_url(@owner), notice: "Owner was successfully created." }
  #     format.json { render :show, status: :created, location: @owner }
  #   else
  #     format.html { render :new, status: :unprocessable_entity }
  #     format.json { render json: @owner.errors, status: :unprocessable_entity }
  #   end
  # end

  def show
  end

  private

  def set_owner
    @owner = Owner.find(params[:id])
  end

  def owner_params
    params.fetch(:owner, {})
  end
end
