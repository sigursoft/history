#--
# Copyright 2018 by Anton Kozik (anton.kozik@gmail.com)
#--
require 'cuba'
require 'json'

HISTORY = { message: 'Example message' }.freeze

CONTENT_TYPE = 'Content-Type'.freeze

Cuba.define do
  on get do
    on root do
      res.headers[CONTENT_TYPE] = 'application/json'
      res.write JSON.generate(HISTORY)
    end
  end
end