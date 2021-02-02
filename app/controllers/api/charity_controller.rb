class Api::CharityController < ApplicationController

  def index

    @summary = HTTP.headers("user_key" => Rails.application.credentials.charity_api[:api_key]).get("http://data.orghunter.com/v1/charitysearch?").parse 

    render "index.json.jb"
  end
end
