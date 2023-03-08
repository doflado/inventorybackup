class RegionsController < ApplicationController
    before_action :authenticate_user!

    def create
        region = Region.create(region_params)
    end

    def index

    end

    def show
        
    end

    def edit

    end

    def delete

    end

    private
    def region_params
        params.require(region).permit(:name)
    end
end
