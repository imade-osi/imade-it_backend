class CareerServicesController < ApplicationController

def index 
        @services= CareerServices.all.sort
        render json: @services 
    end 

    def create 
         @services = CareerServices.create(appnt_param)
         render json: @services    
    end 

    def show 
        @services = CareerServices.find(params[:id])
        render json: @services
    end 

    def update
        @services = CareerServices.find(params[:id])
        @services.update(service_param)

        # @appointment.date = appnt_param[:date]
        # @appointment.save  
        render json: @services
    end 

    def destroy
        @services = CareerServices.find(params[:id])
        @services.delete
    end 

    
    private 

    def service_param
        params.permit(:user_id, :name :address)
    end 
 
end
