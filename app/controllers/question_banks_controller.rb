class QuestionBanksController < ApplicationController
  before_action :set_question_bank, only: [:show, :edit, :update, :destroy]

  # GET /question_banks
  # GET /question_banks.json
  def index
    @question_banks = QuestionBank.all
  end

  # GET /question_banks/1
  # GET /question_banks/1.json
  def show
  end

  # GET /question_banks/new
  def new
    @question_bank = QuestionBank.new
  end

  # GET /question_banks/1/edit
  def edit
  end

  # POST /question_banks
  # POST /question_banks.json
  def create
    @question_bank = QuestionBank.new(question_bank_params)

    respond_to do |format|
      if @question_bank.save
        format.html { redirect_to @question_bank, notice: 'Question bank was successfully created.' }
        format.json { render :show, status: :created, location: @question_bank }
      else
        format.html { render :new }
        format.json { render json: @question_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_banks/1
  # PATCH/PUT /question_banks/1.json
  def update
    respond_to do |format|
      if @question_bank.update(question_bank_params)
        format.html { redirect_to @question_bank, notice: 'Question bank was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_bank }
      else
        format.html { render :edit }
        format.json { render json: @question_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_banks/1
  # DELETE /question_banks/1.json
  def destroy
    @question_bank.destroy
    respond_to do |format|
      format.html { redirect_to question_banks_url, notice: 'Question bank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_bank
      @question_bank = QuestionBank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_bank_params
      params.require(:question_bank).permit(:title)
    end
end
