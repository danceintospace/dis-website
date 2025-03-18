# frozen_string_literal: true

class UpdatesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index; end
end
