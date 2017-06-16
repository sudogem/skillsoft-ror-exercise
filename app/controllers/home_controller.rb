class HomeController < ApplicationController
  def home
    @students = Student.all
    @database = Rails.configuration.database_configuration[Rails.env]
    Rails.logger.debug "============================================"
    Rails.logger.debug @database
    Rails.logger.debug "============================================"
  end
end
