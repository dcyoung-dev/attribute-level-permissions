class DashboardsController < ApplicationController
  def show
    @people = Person.all
  end
end
