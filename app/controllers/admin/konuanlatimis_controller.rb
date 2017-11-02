class Admin::KonuanlatimisController < ApplicationController
  layout "admin"
	before_action :authenticate_user!
	before_action :set_admin_konuanlatimi, only: [:show, :edit, :update, :destroy]

  # GET /admin/konuanlatimis
  # GET /admin/konuanlatimis.json
  def index
    @admin_konuanlatimis = Admin::Konuanlatimi.all
  end

  # GET /admin/konuanlatimis/1
  # GET /admin/konuanlatimis/1.json
  def show
  end

  # GET /admin/konuanlatimis/new
  def new
    @admin_konuanlatimi = Admin::Konuanlatimi.new
  end

  # GET /admin/konuanlatimis/1/edit
  def edit
  end

  # POST /admin/konuanlatimis
  # POST /admin/konuanlatimis.json
  def create
    @admin_konuanlatimi = Admin::Konuanlatimi.new(admin_konuanlatimi_params)

    respond_to do |format|
      if @admin_konuanlatimi.save
        format.html { redirect_to @admin_konuanlatimi, notice: 'Konuanlatimi was successfully created.' }
        format.json { render :show, status: :created, location: @admin_konuanlatimi }
      else
        format.html { render :new }
        format.json { render json: @admin_konuanlatimi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/konuanlatimis/1
  # PATCH/PUT /admin/konuanlatimis/1.json
  def update
    respond_to do |format|
      if @admin_konuanlatimi.update(admin_konuanlatimi_params)
        format.html { redirect_to @admin_konuanlatimi, notice: 'Konuanlatimi was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_konuanlatimi }
      else
        format.html { render :edit }
        format.json { render json: @admin_konuanlatimi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/konuanlatimis/1
  # DELETE /admin/konuanlatimis/1.json
  def destroy
    @admin_konuanlatimi.destroy
    respond_to do |format|
      format.html { redirect_to admin_konuanlatimis_url, notice: 'Konuanlatimi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_konuanlatimi
      @admin_konuanlatimi = Admin::Konuanlatimi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_konuanlatimi_params
			params.require(:admin_konuanlatimi).permit(:sinif, :uniteadi, :kavram, :metin, :konuadi, :dosya, :unite_id)
    end
end
