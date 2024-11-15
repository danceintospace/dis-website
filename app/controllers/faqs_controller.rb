# frozen_string_literal: true

class FaqsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  def index; end

  def show
    # your code here
  end
end
