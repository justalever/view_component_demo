# frozen_string_literal: true

class AvatarComponent < ApplicationComponent
  def initialize(user:, size: :md)
    @user = user
    @size = size
  end

  def avatar_url
    default_avatar_url
  end

  def avatar_class
   case @size
   when :lg
	   "size-12 rounded-md"
   when :md
	   "size-8 rounded-md"
	 when :sm
		 "size-6 rounded-md"
	 end
  end

  private

  def default_avatar_url
    "https://ui-avatars.com/api/?name=#{@user.name}&size=64"
  end
end
