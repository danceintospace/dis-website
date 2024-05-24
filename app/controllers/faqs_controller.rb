class FaqsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
  end
  def show
    # your code here
  end
end
