class UsersController < ApplicationController

def index

	@users = User.all
  @book = Book.new
  @user = User.new

end
def new

	@user = User.new

end
def edit

	@user = User.find(params[:id])

end

def show

  @user = User.find(params[:id])
  @book = Book.new
  @books = @user.books

end

def create

	@user = User.new(name: params[:name], email: params[:email],image_name: "default_user.jpg",
      password: params[:password])

    if @user.save
      flash[:notice] = "Welcome! You have signed up successfully."
      redirect_to user_path(@user.id)
    else
      redirect_to user_new_path
    end
end

def update

    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    
    if @user.save
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      @users = User.all
      render 'edit'
    end
end
private
def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
end
end
