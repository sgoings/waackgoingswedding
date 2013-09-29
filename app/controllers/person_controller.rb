class PersonController < ApplicationController
  def index
    @projects = Person.search(params[:search])
  end

  def show

  end

  def update

  end

  def search

  end
end
