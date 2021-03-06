json.byId do
    @users.each do |potential_worker|
        json.set! potential_worker.id do
            json.extract! potential_worker, :id, :username
            json.photoURL potential_worker.photo.attached? ? (url_for(potential_worker.photo)) : ("https://bug-off-public.s3.us-east-2.amazonaws.com/default_profile_picture.svg")
        end
    end
end


json.allIds @users.map(&:id)

json.totalPotentialWorkers @all_users_count 