class SemesterCurriculumsController < ApplicationController
  before_action :set_semester_curriculum, only: %i[ show edit update destroy ]

  # GET /semester_curriculums or /semester_curriculums.json
  def index
    @semester_curriculums = SemesterCurriculum.all
  end

  # GET /semester_curriculums/1 or /semester_curriculums/1.json
  def show
  end

  # GET /semester_curriculums/new
  # def new
  #
  #   @semester_curriculum = SemesterCurriculum.new
  #
  # end





  # GET /semester_curriculums/1/edit
  def edit
  end

  # POST /semester_curriculums or /semester_curriculums.json
  def create
     @semester_curriculum = SemesterCurriculum.new(semester_curriculum_params)

    respond_to do |format|
      if @semester_curriculum.save
        format.html { redirect_to semester_curriculum_url(@semester_curriculum), notice: "Semester curriculum was successfully created." }
        format.json { render :show, status: :created, location: @semester_curriculum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @semester_curriculum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /semester_curriculums/1 or /semester_curriculums/1.json
  def update
    respond_to do |format|
      if @semester_curriculum.update(semester_curriculum_params)
        format.html { redirect_to semester_curriculum_url(@semester_curriculum), notice: "Semester curriculum was successfully updated." }
        format.json { render :show, status: :ok, location: @semester_curriculum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @semester_curriculum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /semester_curriculums/1 or /semester_curriculums/1.json
  def destroy
    @semester_curriculum.destroy

    respond_to do |format|
      format.html { redirect_to semester_curriculums_url, notice: "Semester curriculum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semester_curriculum
      @semester_curriculum = SemesterCurriculum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def semester_curriculum_params
      params.require(:semester_curriculum).permit(:grade, :semester_id, :curriculum_id, :student_id)
    end
end
