# frozen_string_literal: true

class EntryComponent < ViewComponent::Base
  def initialize(entry:)
    @entry = entry
  end
end
