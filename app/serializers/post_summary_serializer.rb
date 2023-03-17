class PostSummarySerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  belongs_to :author
  has_many :tags

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
