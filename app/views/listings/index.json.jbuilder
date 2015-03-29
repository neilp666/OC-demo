json.array!(@listings) do |listing|
  json.extract! listing, :id, :title, :time, :date, :seats, :price, :venue_name, :location, :additional_info, :projector, :cables, :laptops, :seating, :blinds, :lighting, :camcorder, :catering, :toilets, :fire, :internet
  json.url listing_url(listing, format: :json)
end
