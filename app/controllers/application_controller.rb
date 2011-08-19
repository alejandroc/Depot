class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_date
    days = %w( Monday Tuesday Wednesday Thursday Friday Saturday Sunday )
    months = %w( January February March April May June August September Octuber November December)
    "#{days[ Date.today.cwday - 1 ] } - #{ months[ Date.today.month - 1 ] } #{ Date.today.day }, #{ Date.today.year}"
  end
end
