class UsersController < ApplicationController
    before_filter :authenticate, :only => [:edit, :update]
    before_filter :correct_user, :only => [:edit, :update]
  
  def show
    @user = User.find(params[:id])

  end
  def new
    @user = User.new
    @title="Sign up"
  end
    def dashboard
      @users = User.all
   end

  def create
   @user = User.new(params[:user])
   if @user.save 
     sign_in @user
    redirect_to user_root_path
  else
   @title = "Sign up"
   render 'new'
 end
 
end

  def edit

    @title = "Edit user"
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      @title = "Edit user"
      render 'edit'
    end
  end
   def change_password

    @user = User.find(current_user.id)

    if request.post?
      if User.authenticate(@user.email,
        params[:change_password][:old_password]) == @user
        @user.password = params[:change_password][:new_password]
        @user.password_confirmation =
        params[:change_password][:new_password_confirmation]

          if @user.save
            flash[:notice] = 'Password successfully updated!'
            redirect_to change_password_path
          else
            flash[:error] = 'New password mismatch.'
            render :action => 'change_password'
          end
      else
          flash[:error] = 'Old password incorrect'
          render :action => 'change_password'
      end
    end

   end
     

    
    
  private
  def authenticate
    deny_access unless signed_in?
  end
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user=(@user)
  end

  
end
