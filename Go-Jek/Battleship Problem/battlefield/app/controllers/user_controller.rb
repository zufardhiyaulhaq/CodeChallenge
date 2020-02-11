# frozen_string_literal: true

class UserController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    if User.where(email: user_params[:email]).blank?
      @user = User.new(user_params)
      @user.save
      render json: { "status": 'User is created!' }
    else
      render json: { "status": 'User is exist!' }
    end
  end

  def show
    @user = User.find_by(email: find_params[:email])
    if @user.nil?
      render json: { "status": 'User not found!' }
    else
      render json: @user
    end
  end

  def delete
    @user = User.find_by(email: find_params[:email])
    if @user.nil?
      @user.destroy
    else
      render json: { "status": 'User is deleted!' }
    end
  end

  def user_params
    params.permit(:user, :email, :map, ship: %i[x y], missile: %i[x y])
  end

  def find_params
    params.permit(:email)
  end
end
