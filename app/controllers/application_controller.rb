class ApplicationController < ActionController::Base

    before_action :current_user
    def current_user
        @current_user = User.find_by({"id" => session["user_id"]})
    end 

end

def destroy
    session["user_id"] = nil
    flash["notice"]
end 