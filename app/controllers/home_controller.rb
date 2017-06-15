class HomeController < ApplicationController
  def home
    @students = Student.all
    @database = Rails.configuration.database_configuration[Rails.env]
  end
end
