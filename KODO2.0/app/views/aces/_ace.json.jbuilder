# frozen_string_literal: true

json.extract! ace, :id, :name, :created_at, :updated_at
json.url ace_url(ace, format: :json)
