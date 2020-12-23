class ParticipantsController < ApplicationController
    def index
        @participants = Participant.all
    end

    def new
        @participant = Participant.new
    end
    
    def show
    end

    def update
    end

    def create
        #binding.pry
        required_params = params.require(:participant).permit(:name, :age, :gender)
        #binding.pry
        participant = Participant.new(required_params)
        if participant.save
            redirect_to participants_path
        else
            render :new
        end
    end

    def destroy
    end

    private
end
