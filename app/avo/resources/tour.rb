class Avo::Resources::Tour < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :title, as: :text
    field :description, as: :textarea
    field :start_date, as: :date
    field :end_date, as: :date
    field :location, as: :text
    field :category, as: :text
  end
end
