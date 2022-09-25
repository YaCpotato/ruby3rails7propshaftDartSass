# frozen_string_literal: true

class Entry::ListComponent < ViewComponent::Base
  def initialize(entries:)
    @entries = entries
  end
end
