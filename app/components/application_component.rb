# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  include Rails.application.routes.url_helpers
  include Devise::Controllers::Helpers

  def helpers
    ActionController::Base.helpers
  end
end
