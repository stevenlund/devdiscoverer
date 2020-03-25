class PagesController < ApplicationController
  def home
    @developers = Developer.all
  end
end

