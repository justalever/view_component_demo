# frozen_string_literal: true

class Nav::ItemComponent < ApplicationComponent
  def initialize(title:, active: false, href:)
    @title = title
    @active = active
    @href = href
  end

  def classes
    "font-medium text-base #{active_class}"
  end

  def active_class
    "text-blue-600 underline" if @active
  end
end
