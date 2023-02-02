# frozen_string_literal: true

class SearchController < ApplicationController
  def search
    @search_field = get_query.present? ? get_query : '*'
    @produts = Product.search(title = 'casio')
  end
end

private

def get_query
  params.require(:search).permit(:search)
end
