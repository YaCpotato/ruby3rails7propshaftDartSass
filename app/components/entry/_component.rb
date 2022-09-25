# frozen_string_literal: true

class Entry::Component < ViewComponent::Base
  def initialize(entry:)
    @entry = entry
  end
end
