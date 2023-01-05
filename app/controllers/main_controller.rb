class MainController < ApplicationController
    before_action :set_page_options
    def index
        @brands = Brand.limit(3)
        @hits = Product.all.limit(8)
    end

    def set_page_options
        @title = "Watches shop",
        @description = "Watches shop",
        @keywords = "Man Women Kids"
    end
end
