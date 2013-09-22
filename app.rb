require 'ramaze'
require 'sequel'

class MainController < Ramaze::Controller
  
  engine :erubis
  layout :default
  
  def index
  end
  
  def mypage
  end
  
  def options
    str = 'OPTIONS:'
    str += '<br>views: ' + Ramaze.options.views.to_s
    str += '<br>publics: ' + Ramaze.options.publics.to_s
    str += '<br>layouts: ' + Ramaze.options.layouts.to_s
    str += '<br>roots: ' + Ramaze.options.roots.to_s
    str += '<br>helpers: ' + Ramaze::HelpersHelper.options.paths.to_s
  end
  
end

DB = Sequel.connect('sqlite://db/test.db')

class Post < Sequel::Model
end

Ramaze.start :port => 8080
