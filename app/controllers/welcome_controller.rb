class WelcomeController < ApplicationController
  def index
    @articles = Article.where(is_active: true)
  end
end
