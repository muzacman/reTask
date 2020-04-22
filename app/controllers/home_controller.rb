class HomeController < ApplicationController
  def index
    @movements_all = Movement.all
    @movements = Movement.last(3)
    @revolutions = Revolution.all

  end

  def goodbye
  end
end
