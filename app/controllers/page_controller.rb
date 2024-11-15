# frozen_string_literal: true

class PageController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index; end
end
