# frozen_string_literal: true

class CategoryController < ApplicationController
  def show
    @category = Category.find(params[:id])
    set_page_options
  end

  attr_accessor :category

  def set_page_options
    add_breadcrumb 'Home', :root_path, title: 'Home'
    set_meta_tags category.slice(:title, :keywords, :description)
  end
end
