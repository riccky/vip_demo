# coding: utf-8

class MainController < ApplicationController
  layout "base"
  before_filter :authenticate_user!
  
  def index
  end
end
