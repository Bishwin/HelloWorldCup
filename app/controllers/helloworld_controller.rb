class HelloworldController < ApplicationController

  def index
    render json: "Hello Index".to_json
  end

end
