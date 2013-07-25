class TestController < ApplicationController
  def index
    canonical_url
  end

  def hash
    canonical_url id: params[:id]
  end

  def static
    canonical_url "/static"
  end
end
