# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should have_many(:galleries) }
  it { should have_many(:related_products) }
  it { should have_many(:related) }
  it { should belong_to(:category) }
end
