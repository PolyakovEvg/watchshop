# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RelatedProduct, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it { should belong_to(:product) }
  it { should belong_to(:related) }
end
