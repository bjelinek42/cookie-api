class CookiesController < ApplicationController

  def index
    cookies = Cookie.all
    render json: cookies
  end

  def show
    cookies = Cookie.find_by(id: params[:id])
    render json: cookies
  end

  def create
    cookie = Cookie.new(
      name: "Madline", calories: "300", size: "L"
    )
    cookie.save
  end

  def update
    cookie = Cookie.find_by(id: params[:id])
    cookie.name = params[:name]
    cookie.calories = params[:calories]
    cookie.size = params[:size]
    cookie.save
  end

  def destroy
    cookie = Cookie.find_by(id: params[:id])
    cookie.destroy
  end
end
