# require 'contentful'
#
# class ContentfulClient
#
#     attr_accessor :client
#
#     def initialize
#         # This method Initializes the contentful client
#
#         @client = Contentful::Client.new(
#             space: ENV['CONTENTFUL_SPACE_ID'],
#             access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
#             dynamic_entries: :auto,
#             raise_errors: true
#         )
#     end
#
#     def entries(content_type, include_layer)
#         # This method calls the fetches all Contentful entries based on specific
#         # 'content type' and upto a certain 'layer'
#         client.entries(content_type: content_type, include: include_layer)
#     end
#
#     def entry(id)
#         # This method fetches the details of a specific entry based on the 'id'
#         client.entry(id)
#     end
# end
