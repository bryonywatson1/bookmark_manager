require 'rubygems'
require './app/app'
require File.join(File.dirname(__FILE__), 'app.rb')

set :environment, :development

run BookmarkManager
