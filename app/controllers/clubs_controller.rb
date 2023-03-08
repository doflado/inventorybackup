class ClubsController < ApplicationController

    def create
        club = Club.new(club_params)
        if club.save
            render json: club
        end
    end
    
    def index
        clubs = Club.all
        render json: clubs
    end

    def show
        club = Club.find_by_id(params[:club_id])
    end

    def edit
        
    end

    def destroy

    end

    private
    def club_params
        params.require(:club).permit(:club_id, :name, :address, :tech_id)
    end

end
