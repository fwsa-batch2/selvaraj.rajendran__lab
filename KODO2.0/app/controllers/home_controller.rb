# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  def search
    @filtered_items = User.where('Username LIKE ? OR email LIKE ?', "%#{params[:q]}%", "%#{params[:q]}%")
  end
end
