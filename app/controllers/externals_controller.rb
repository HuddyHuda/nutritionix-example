class ExternalsController < ApplicationController
  def index
    @batman = HTTParty.get("http://www.omdbapi.com/?s=Batman")
    logger.debug "HTTParty result is: #{@batman}"
  end

  def search

  end

  def about

  end

  def help

  end

  def searchpost
    keyword = params[:q]
    appid = "b4b15aeb"
    appkey = "cd0ec70b471170cb6dd54055513ef1d5"
    @search = HTTParty.get("https://api.nutritionix.com/v1_1/search/#{keyword}?results=0%3A20&cal_min=0&cal_max=50000&fields=item_name%2Cbrand_name%2Citem_id%2Cbrand_id&appId=#{appid}&appKey=#{appkey}",
    headers:{
      "Accept" => "application/json"
    })
    logger.debug "Trying to search for #{@search}"
    render json: {
      'result': @search["hits"]
    }
  end
end
