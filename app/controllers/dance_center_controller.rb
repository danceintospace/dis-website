class DanceCenterController < ApplicationController
  before_action :authenticate_user!, except: %i[show]
  def show; end

  def download_pdf
    respond_to do |format|
      format.pdf do
        pdf = dance_center_pdf.def new
        send_data pdf.render, filename: 'dance_center_pdf', type: 'application/pdf', disposition: 'inline'
      end
    end
  end
end
