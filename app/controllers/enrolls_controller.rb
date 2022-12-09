class EnrollsController < ApplicationController
  before_action :set_enroll, only: %i[ show edit update destroy ]

  # GET /enrolls or /enrolls.json
  def index
    @enrolls = Enroll.all
    @enr = Enroll.where(student_id: '1')
    @sam = 0
    @cnt =0
    @enr.each do |grad|
      @sam = @sam + grad.grade
      @cnt = @cnt + 1
    end
    @res = @sam / @cnt

  end

  # GET /enrolls/1 or /enrolls/1.json
  def show
  end

  # GET /enrolls/new
  def new
    @enroll = Enroll.new
  end

  # GET /enrolls/1/edit
  def edit
  end

  # POST /enrolls or /enrolls.json
  def create
    @enroll = Enroll.new(enroll_params)

    respond_to do |format|
      if @enroll.save
        format.html { redirect_to enroll_url(@enroll), notice: "Enroll was successfully created." }
        format.json { render :show, status: :created, location: @enroll }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @enroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrolls/1 or /enrolls/1.json
  def update
    respond_to do |format|
      if @enroll.update(enroll_params)
        format.html { redirect_to enroll_url(@enroll), notice: "Enroll was successfully updated." }
        format.json { render :show, status: :ok, location: @enroll }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @enroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolls/1 or /enrolls/1.json
  def destroy
    @enroll.destroy

    respond_to do |format|
      format.html { redirect_to enrolls_url, notice: "Enroll was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  def semester_course
    courses = params[:selected_course_ids]
    # if params[:selected_course_ids].present?
    courses.each do |sem_cour|
      params[:curriculum_id] = sem_cour
      puts("#########  " + sem_cour);
      # params[:grade] = "N"
      @enroll = Enroll.create(semester_id: params[:semester_id], curriculum_id: params[:curriculum_id], student_id: params[:student_id], semester_curriculums_id: params[:semester_curriculums_id])

      # if @semester_curriculum.save
      #   flash[:success] = "Semester-Course has been added."
      #
      # else
      #   flash[:alert] = @semester_curriculum.errors
      # end
    end

    # end


  end








  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enroll
      @enroll = Enroll.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enroll_params
      params.require(:enroll).permit(:student_id, :semester_id, :curriculum_id, :grade, :semester_curriculums_id)
    end
end
