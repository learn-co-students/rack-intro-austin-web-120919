require 'rack'

#SOMETHING THAT RESPONDS TO CALL, THATS WHAT RACK DEMANDS

class MyServer

    def call(env)
        return [200, {'Content-type' => 'text/html'}, pretty_response]
    end

    def pretty_response
        (Time.now.to_i % 2).zero? ? ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
    end
end

run MyServer.new