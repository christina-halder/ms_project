class Recipe < ContentfulModel::Base
  self.content_type_id = "recipe"

  coerce_field title: :String
  coerce_field description: :String
  coerce_field chef: :String
  coerce_field tags: :Array

  def normalize
    {
        id: id,
        photo: ("https:" + photo.url rescue nil),
        title: (title rescue nil),
        description: (description rescue nil),
        chef: (chef.name rescue 'N/A'),
        tags: (tags.map(&:name).join(', ') rescue 'N/A')
    }
  end
end
