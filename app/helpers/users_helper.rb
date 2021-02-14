module UsersHelper

    def log_in(user)
        session[:user_id] = user.id
    end

    def mood(user)
        if user.happiness >= user.nausea
            "happy"
        else
            "sad"
        end
    end

    
end
