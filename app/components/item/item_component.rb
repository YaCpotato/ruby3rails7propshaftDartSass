# frozen_string_literal: true

class Item::ItemComponent < ViewComponent::Base
  def initialize(item:)
    @item = item
  end
end
