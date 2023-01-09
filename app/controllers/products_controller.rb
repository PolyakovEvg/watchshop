# frozen_string_literal: true

class ProductsController < ApplicationController
  after_action :register_visit, only: [:show]

  def show
    @product = Product.find(params[:id])
    @category = Category.find(@product.category_id)
    set_page_options
    @recently
  end

  attr_accessor :product
  attr_reader :product

  helper_method :recent_products

  def recent_products
    [] if recently.none?
    Product.where(id: recently)
  end

  def recently
    session[:viewed_products] ||= []
  end

  def register_visit
    session[:viewed_products] ||= []
    session[:viewed_products] = ([@product.id] + session[:viewed_products]).uniq.take(3)
  end

  def set_page_options
    add_breadcrumb 'Home', :root_path, title: 'Home'
    add_breadcrumb @category.title, category_path
    set_meta_tags product.slice(:title, :keywords, :description)
  end
end
