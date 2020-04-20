class HomeController < ApplicationController
  def index

    @movements = Movement.last(3)
  end

  def goodbye
  end
end
