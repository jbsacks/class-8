class SessionsController < ApplicationController
    def new
    end

    def create
        @user = user.find_by({"email" => params["email"] })
        if @user
            if @user["password"] == params["password"]
                flash["notice"] = "Welcome."
                redirect_to "/companies"
            else 
                flash["notice"] = "Nope."
                redirect_to "/companies"
            end 
        else 
            flash["notice"] = "Nope."
            redirect_to "/sessions/new"
        end 
    end
end 
