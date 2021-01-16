class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      strain: params[:strain],
      price_per_gram: params[:price_per_gram],
      mood: params[:mood],
      thc_percentage: params[:thc_percentage],
      image_url: params[:image_url]
    )
    @product.save
    render 'show.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.strain = params[:strain] || @product.strain
    @product.price_per_gram = params[:price_per_gram] || @product.price_per_gram
    @product.mood = params[:mood] || @product.mood
    @product.thc_percentage = params[:thc_percentage] || @product.thc_percentage
    @product.image_url = params[:image_url] || @product.image_url
    render 'show.json.jb'
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
  end

end
