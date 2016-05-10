class Api::V1::TopicsController < Api::V1::BaseController
 # #22
   before_action :authenticate_user, except: [:index, :show]
   before_action :authorize_user, except: [:index, :show]

   def index
     topics = Topic.all
     render json: topics.to_json(include: :posts), status :200
   end

   def show
     topic = Topic.find(params[:id])
     render json: topic.to_json(include: :posts), status: 200
   end
 end
