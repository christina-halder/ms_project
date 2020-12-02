class Recipe < ContentfulModel::Base
  self.content_type_id = "recipe"
  # coerce_field title: :String
  #

  # def cache_key(*timestamp_names)
  #   super
  # end
end
