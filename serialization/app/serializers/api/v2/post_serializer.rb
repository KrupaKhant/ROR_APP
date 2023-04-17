module Api
  module V2
    class PostSerializer < ActiveModel::Serializer
      attributes :id, :title

      def title
        object.title.upcase
      end
    end
  end
end