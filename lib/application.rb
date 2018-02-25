#--
# Copyright 2018 by Anton Kozik (anton.kozik@gmail.com)
#--
require 'cuba'
require 'json'

HISTORY = ['Example message 1', 'Example message 2', 'Example message 3', 'Example message 4'].freeze

CONTENT_TYPE = 'Content-Type'.freeze

Cuba.define do
  on get do
    on root do
      res.headers[CONTENT_TYPE] = 'application/json'
      message = { fact: HISTORY.sample }
      res.write JSON.generate message
    end
  end
end

