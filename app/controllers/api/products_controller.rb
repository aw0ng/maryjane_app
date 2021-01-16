class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.json.jb'
  end

  def create
    @product = Product.new(
      {name: 'name', strain: 'strain', price_per_gram: ''}
    )
    render 'show.json.jb'
  end

  def show
    @product = Product.find_by(id: params['id'])
    render 'show.json.jb'
  end

  def update
    render 'show.json.jb'
  end

  def destroy
    product = Product.find_by(id: params['id'])
    product.destroy
  end

end
