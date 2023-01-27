class StaticPagesController < ApplicationController
  def home
    @signed_in = user_signed_in?
    if @signed_in
      @user = current_user
    end
  end
end
