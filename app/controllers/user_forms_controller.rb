class UserFormsController < ApplicationController
    before_action :set_user_form, only: [:show, :edit, :update, :destroy]
  
    
    def index
      @user_forms = UserForm.all
    end
  
    
    def show
    end
  
    
    def new      
      @user_form = UserForm.new
    end
  
    def edit
    end
  
    
    def create
      #puts("web form idddddd ",params[:web])
      #puts params:title)
      puts "here are all the params",params.inspect
      #@web_form = WebForm.find(id: params[:web_form_id])
      @web_form = WebForm.find(1)
      puts("here is the title ",@web_form.title)
      @user_form = UserForm.new(user_form_params)
      @user_form.web_form_id = @web_form.id
      @user_form.title = @web_form.title
      @user_form.description = @web_form.description
  
      respond_to do |format|
        if @user_form.save
          format.html { redirect_to @user_form, notice: 'User form was successfully created.' }
          format.json { render :show, status: :created, location: @user_form }
        else
          format.html { render :new }
          format.json { render json: @user_form.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def update
      respond_to do |format|
        if @user_form.update(user_form_params)
          format.html { redirect_to @user_form, notice: 'User form was successfully updated.' }
          format.json { render :show, status: :ok, location: @user_form }
        else
          format.html { render :edit }
          format.json { render json: @user_form.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /web_forms/1
    # DELETE /web_forms/1.json
    def destroy
      @user_form.destroy
      respond_to do |format|
        format.html { redirect_to web_forms_url, notice: 'User form was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user_form
        #@user_form = UserForm.friendly.find(params[:id])
        @user_form = UserForm.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def user_form_params
        params.require(:user_form).permit(:title, :description, :image, :username,
         :phone_number, :email, :property_type, :job_title, :time_to_call, :web_form_id)#, :slug)
      end
  end
  