class MaritimeTermsController < ApplicationController
  before_action :set_maritime_term, only: [:show, :edit, :update, :destroy]

  # GET /maritime_terms
  # GET /maritime_terms.json
  def index
    @maritime_terms = MaritimeTerm.order('term ASC')
  end

  # GET /maritime_terms/1
  # GET /maritime_terms/1.json
  def show
  end

  # GET /maritime_terms/new
  # def new
  #   @maritime_term = MaritimeTerm.new
  # end

  # GET /maritime_terms/1/edit
  # def edit
  # end

  # POST /maritime_terms
  # POST /maritime_terms.json
  # def create
  #   @maritime_term = MaritimeTerm.new(maritime_term_params)
  #
  #   respond_to do |format|
  #     if @maritime_term.save
  #       format.html { redirect_to @maritime_term, notice: 'Maritime term was successfully created.' }
  #       format.json { render :show, status: :created, location: @maritime_term }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @maritime_term.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /maritime_terms/1
  # PATCH/PUT /maritime_terms/1.json
  # def update
  #   respond_to do |format|
  #     if @maritime_term.update(maritime_term_params)
  #       format.html { redirect_to @maritime_term, notice: 'Maritime term was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @maritime_term }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @maritime_term.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /maritime_terms/1
  # DELETE /maritime_terms/1.json
  # def destroy
  #   @maritime_term.destroy
  #   respond_to do |format|
  #     format.html { redirect_to maritime_terms_url, notice: 'Maritime term was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maritime_term
      @maritime_term = MaritimeTerm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maritime_term_params
      params.require(:maritime_term).permit(:term, :explination)
    end
end
