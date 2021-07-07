require 'rack'

my_server = Proc.new do 
    [401,{'Content-type' => 'text/html'}, ['
    <h1>Tombomb\'s page!!!!</h1>
    <h2>How much crap can I have in here?</h2>
    <p>Man this is really cool. I wonder if I can link to <a href="https://www.google.com">google</a> on here?</p>

    
    ']]
end

run my_server