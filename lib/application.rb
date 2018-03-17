# frozen_string_literal: true

#-------------------------------------------------------#
# Copyright 2018 by Anton Kozik (anton.kozik@gmail.com) #
#-------------------------------------------------------#

require 'cuba'
require 'json'

HISTORY = ['Example message 1', 'Example message 2', 'Example message 3', 'Example message 4'].freeze
# Load history facts from S3
CONTENT_TYPE = 'Content-Type'


Cuba.define do

  def generate_response(hash)
    res.headers[CONTENT_TYPE] = 'application/json'
    res.write JSON.generate(hash)
  end

  on get do
    on root do
      generate_response(fact: HISTORY.sample)
    end
  end

end