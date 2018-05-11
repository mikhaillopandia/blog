JSONAPI.configure do |config|
  #:underscored_key, :camelized_key, :dasherized_key, or custom
  config.json_key_format = :underscored_key

  #:underscored_route, :camelized_route, :dasherized_route, or custom
  config.route_format = :underscored_route

  #:basic, :active_record, or custom
  # config.operations_processor = :active_record

  # config.allowed_request_params = [:include, :fields, :format, :controller, :action, :sort, :page]

  # :none, :offset, :paged, or a custom paginator name
  config.default_paginator = :offset

  # Output pagination links at top level
  # config.top_level_links_include_pagination = true

  config.default_page_size = 10
  config.maximum_page_size = 100

  # Output the record count in top level meta data for find operations
  config.top_level_meta_include_record_count = true
  config.top_level_meta_record_count_key = :total_records

  # config.use_text_errors = false
end
