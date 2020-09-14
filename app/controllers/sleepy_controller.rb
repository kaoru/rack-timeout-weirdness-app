class SleepyController < ApplicationController
  def index
    @sleep = ActiveModel::Type::Integer.new.cast(params[:sleep]).presence || 1
    sleep @sleep
  end
end
