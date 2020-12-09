class Application

    def call(env)
        resp = Rack::Response.new
        resp.write check_noon
        resp.finish
    end
end

def current_time
    todays_date = Time.now.to_s.split
    time = todays_date[1]
    time
end

def check_noon
    new_time = current_time.split(":")
    current_time[0].to_i > 12 ? "Good Afternoon!" : "Good Morning!"
end
