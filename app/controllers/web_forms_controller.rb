class WebFormsController < ApplicationController
  before_action :set_web_form, only: [:show, :edit, :update, :destroy]

  # GET /web_forms
  # GET /web_forms.json
  def index
    @web_forms = WebForm.all
  end

  # GET /web_forms/1
  # GET /web_forms/1.json
  def show
  end

  # GET /web_forms/new
  def new
    @web_form = WebForm.new
  end

  # GET /web_forms/1/edit
  def edit
  end

  # POST /web_forms
  # POST /web_forms.json
  def create
    @web_form = WebForm.new(web_form_params)

    respond_to do |format|
      if @web_form.save
        format.html { redirect_to @web_form, notice: 'Web form was successfully created.' }
        format.json { render :show, status: :created, location: @web_form }
      else
        format.html { render :new }
        format.json { render json: @web_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_forms/1
  # PATCH/PUT /web_forms/1.json
  def update
    respond_to do |format|
      if @web_form.update(web_form_params)
        format.html { redirect_to @web_form, notice: 'Web form was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_form }
      else
        format.html { render :edit }
        format.json { render json: @web_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_forms/1
  # DELETE /web_forms/1.json
  def destroy
    @web_form.destroy
    respond_to do |format|
      format.html { redirect_to web_forms_url, notice: 'Web form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_form
      @web_form = WebForm.friendly.find(params[:id])
      #@web_form = WebForm.where(title: params[:title] )
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_form_params
      params.require(:web_form).permit(:title, :description, :image, :slug, options:[])
    end
end
