class Avo::Resources::BlogPost < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :cover_image, as: :file
    field :content, as: :trix
    field :published_at, as: :date_time
    field :title, as: :text
  end
end