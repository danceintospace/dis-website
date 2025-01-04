# frozen_string_literal: true

module Avo
  module Resources
    class Program < Avo::BaseResource
      # self.includes = []
      # self.attachments = []
      # self.search = {
      #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
      # }

      def fields
        field :id, as: :id
        field :title, as: :text
        field :content, as: :textarea
        field :image, as: :text
      end
    end
  end
end
