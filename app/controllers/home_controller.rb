class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  def index
    @courses = Course.limit(4)
  end
end
