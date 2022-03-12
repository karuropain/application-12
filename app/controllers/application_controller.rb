class ApplicationController < ActionController::Base
  def new
    @list = List.new
  end
end
