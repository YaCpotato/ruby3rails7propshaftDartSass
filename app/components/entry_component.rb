# frozen_string_literal: true

class EntryComponent < ViewComponent::Base
  def initialize(entry:)
    @entry = entry
  end

  def created_str()
    @entry.created_at.strftime("%Y-%m-%d %H:%M:%S")
  end
end
