# frozen_string_literal: true

class Nav::ContainerComponent < ApplicationComponent
  renders_one :logo, LogoComponent
  renders_many :items, Nav::ItemComponent
end
