class HoasController < ApplicationController
  before_action :set_hoa, only: [:show, :edit, :update, :destroy]

  def index
    @hoas = Hoa.all
  end

  def show
  end

  def new
    @hoa = Hoa.new
  end

  def edit
  end


  def create
    @hoa = Hoa.new(hoa_params)

    respond_to do |format|
      if @hoa.save
        format.html { redirect_to @hoa, notice: 'Hoa was successfully created.' }
        format.json { render :show, status: :created, location: @hoa }
      else
        format.html { render :new }
        format.json { render json: @hoa.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @hoa.update(hoa_params)
        format.html { redirect_to @hoa, notice: 'Hoa was successfully updated.' }
        format.json { render :show, status: :ok, location: @hoa }
      else
        format.html { render :edit }
        format.json { render json: @hoa.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @hoa.destroy
    respond_to do |format|
      format.html { redirect_to hoa_url, notice: 'Hoa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_hoa
      @hoa = Hoa.find(params[:id])
    end

    def hoa_params
      params.require(:hoa).permit(:contact, :phone, :email, :community, :address, :city, :state, :zipcode, :website)
    end
end
