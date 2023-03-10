# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Brand, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  pending "add some examples to (or delete) #{__FILE__}"
end
