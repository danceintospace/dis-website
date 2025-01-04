# frozen_string_literal: true

module Avo
  module Resources
    class BlogPost < Avo::BaseResource
      # self.includes = []
      # self.attachments = []
      self.search = {
        query: -> { query.ransack(id_eq: params[:q], title_cont: params[:q], m: 'or').result(distinct: false) }
      }

      def fields
        field :id, as: :id
        field :title, as: :text
        field :cover_image, as: :file
        field :content, as: :trix
        field :published_at, as: :date_time
      end
    end
  end
end
