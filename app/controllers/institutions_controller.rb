class InstitutionsController < ApplicationController
  before_action :set_institution, only: %i[ show edit update destroy ]

  # GET /medical_institutions or /medical_institutions.json
  def index
    @institutions = Institution.all
  end

  # GET /medical_institutions/1 or /medical_institutions/1.json
  def show
  end

  # GET /medical_institutions/new
  def new
    @institution = Institution.new
  end

  # GET /medical_institutions/1/edit
  def edit
  end

  # POST /medical_institutions or /medical_institutions.json
  def create
    @institution = Institution.new(institution_params)

    respond_to do |format|
      if @institution.save
        format.html { redirect_to institution_url(@institution), notice: "Medical institution was successfully created." }
        format.json { render :show, status: :created, location: @institution }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_institutions/1 or /medical_institutions/1.json
  def update
    respond_to do |format|
      if @institution.update(institution_params)
        format.html { redirect_to institution_url(@institution), notice: "Medical institution was successfully updated." }
        format.json { render :show, status: :ok, location: @institution }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_institutions/1 or /medical_institutions/1.json
  def destroy
    @institution.destroy!

    respond_to do |format|
      format.html { redirect_to institutions_url, notice: "Medical institution was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institution
      @institution = Institution.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def institution_params
      params.require(:institution).permit(:name)
    end
end
