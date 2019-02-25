class Admin::CategoriesController < ApplicationController

  before_filter :authenticate
  def index
  end

  def create
  end

  def new
  end

 protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username = ENV['ADMIN'] && password = ENV['ADMIN_PASS']
    end
  end

end
