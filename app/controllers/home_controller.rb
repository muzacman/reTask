class HomeController < ApplicationController
  def index

    @movement = Movement.last(3)


  end

  def goodbye
  end
end
