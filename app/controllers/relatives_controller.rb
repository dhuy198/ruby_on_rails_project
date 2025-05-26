class RelativesController < ApplicationController
  before_action :set_relative, only: %i[ show edit update destroy ]

  # GET /relatives or /relatives.json
  def index
    @relatives = Relative.all
  end

  # GET /relatives/1 or /relatives/1.json
  def show
  end

  # GET /relatives/new
  def new
    @relative = Relative.new
  end

  # GET /relatives/1/edit
  def edit
    @employee = Employee.find(params[:employee_id])
    @relative = @employee.relatives.find(params[:id])
  end


  # POST /relatives or /relatives.json
  def create
    @relative = Relative.new(relative_params)

    respond_to do |format|
      if @relative.save
        format.html { redirect_to @relative, notice: "Relative was successfully created." }
        format.json { render :show, status: :created, location: @relative }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @relative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatives/1 or /relatives/1.json
  def update
    respond_to do |format|
      if @relative.update(relative_params)
        format.html { redirect_to @relative, notice: "Relative was successfully updated." }
        format.json { render :show, status: :ok, location: @relative }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @relative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatives/1 or /relatives/1.json
  def destroy
    @relative.destroy!

    respond_to do |format|
      format.html { redirect_to relatives_path, status: :see_other, notice: "Relative was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relative
      @relative = Relative.find(params[:employee_id])
    end

    # Only allow a list of trusted parameters through.
    def relative_params
      params.fetch(:relative, {})
    end
end
