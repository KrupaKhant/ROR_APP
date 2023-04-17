module Api
  module V3
    class PostSerializer < ActiveModel::Serializer
      attributes :id, :title, :body
    end
  end
end