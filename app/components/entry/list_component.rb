# frozen_string_literal: true

class Entry::ListComponent < ViewComponent::Base
  def initialize(entries:, limit: 5)
    @entries = entries
    @limit = limit
  end
end
