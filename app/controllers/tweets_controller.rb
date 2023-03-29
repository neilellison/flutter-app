class TweetsController < ApplicationController


  def index
    @tweets = Tweet.all
    @tweets = Tweet.all.order(created_at: :desc)
  end

  def new
    @tweet = Tweet.new
  end

  # def create
  #   @tweet = Tweet.new
  #   render :show
  # end

  def create
    tweet = Tweet.new(tweet_params)
    if tweet.save
    redirect_to user_path(tweet.user)
    else
    render ‘new’
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

   private
   def tweet_params
    params.require(:tweet).permit(:user_id, :text)
  end
end