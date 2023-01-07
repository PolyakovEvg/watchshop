class Product < ApplicationRecord
    enum :hit, {hit: 1, normal: 0}
end
