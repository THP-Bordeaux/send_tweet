class HomesController < ApplicationController


  def index
  end

  def send_tweet
    result = ""
    #Le msg diffère de si le tweet est bien envoyé ou pas
    SendTweet.new(params_tweet[:content]).perform ? result = "tweet bien envoyé!" : result = "tweet pas envoyé, réessayez!"
    flash.now[:sucess] = result
    render 'index'
  end

  private

  def params_tweet
    params.require(:params_tweet).permit(:content)
  end
end
