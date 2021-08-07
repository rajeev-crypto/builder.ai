class Api::User::UserController < ApplicationController
  
  def index
    # render json: @user 

    @user = User.page(params[:page]).per(3)
    byebug
    render json: {
      message: "all User",
      user: @user,
      status: 200
    }
  end

  def create
    @user = User.create(user_params)
    if @user.save
      render json: @user, status: :created, location: @user
    else 
      render json: "wrong params"
    end
  end

  def show
    @user = User.find(parmas[:id])
     if @user
      render json: {message: 'user details' , user: @user},status: 200 
    else
      render json: {error: ' user not found '},status:400
    end 
  end 

  def update
    @user = User.find(params[:id])
    if @user
      @user.update(user_params)
      render json: {message: 'User successfully updated'},status: 200 
    else
      render json: {error: 'Unable to update user'},status:400
    end 
  end  

  def destroy
    @user = User.find(params[:id])
    if @user
      @user.destroy
      render json: {message: 'User successfully deleted' ,list: '[]'},status: 200 
    else
      render json: {error: 'Unable to delete user'},status:400
    end 
  end 
  
  def typehead
    @user = User.where("lower(email) LIKE ? OR lower(lastName) LIKE ? OR lower(firstName) LIKE ?", "%#{params[:search_term].downcase}%")
    if @user
      render json: {message: 'user details' , user: @user},status: 200 
    else
      render json: {error: ' user not found '},status:400
    end 
  end 

  private
    def user_params
      params.require(:user).permit(:firstName, :lastName, :email) if params[:user]
    end

end 