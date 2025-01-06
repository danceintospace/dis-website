# frozen_string_literal: true

class ProgramsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    # Your logic for displaying programs
  end
end
