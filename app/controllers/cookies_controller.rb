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
      name: params[:name],
      calories: params[:calories], 
      size: params[:size]
    )
    cookie.save
    render json: cookie
  end

  def update
    cookie = Cookie.find_by(id: params[:id])
    cookie.name = params[:name]
    cookie.calories = params[:calories]
    cookie.size = params[:size]
    cookie.save
    render json: cookie
  end

  def destroy
    cookie = Cookie.find_by(id: params[:id])
    cookie.destroy
    render json: cookie
  end
end
