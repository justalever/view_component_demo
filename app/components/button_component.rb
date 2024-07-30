# frozen_string_literal: true

class ButtonComponent < ApplicationComponent
  def initialize(label: nil, href:, theme: :primary)
    @label = label
    @href = href
    @theme = theme
  end

  def button_theme
	  case @theme
	  when :primary
		  "btn btn-primary"
		when :secondary
			"btn btn-secondary"
		when :white
			"btn btn-white"
		else
			"btn btn-primary"
		end
  end
end
