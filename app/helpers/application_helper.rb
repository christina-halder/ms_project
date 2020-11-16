module ApplicationHelper
  def contentful
    @client ||= Contentful::Client.new(
        space: ENV['CONTENTFUL_SPACE_ID'],
        access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
        dynamic_entries: :auto,
        raise_errors: true
        )
  end
end
