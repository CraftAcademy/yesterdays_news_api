class Article::IndexSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :published, :category

  def published
    object.created_at
  end

  def category
    object.category.name
  end
end
