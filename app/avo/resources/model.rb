# frozen_string_literal: true

module Avo
  module Resources
    class Model < Avo::BaseResource
      # self.includes = []
      # self.attachments = []
      # self.search = {
      #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
      # }

      def fields
        field :id, as: :id
        field :email, as: :text
      end
    end
  end
end
