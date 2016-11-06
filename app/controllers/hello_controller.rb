class HelloController < ApplicationController
  def index
    @name = 'default'
  end

  def say_hello
    @name = params[:name]
    render 'index'
  end
end
