class TinyRouter
  attr_reader :routes

  def initialize()
    @routes = Hash.new{|hash, key| hash[key] = []}
  end

  def get(route, &block)
    register("GET", route, &block)
  end
  
  def post(route, &block)
    register("POST", route, &block)
  end
  
  def register(verb, route, &block)
    @routes[verb] << [route, block]
  end
   
  def call(verb,route)
    normalized_route = route.chomp('/')

    # find the first matching route
    entry = @routes[verb].find { |r, _| r.chomp('/') == normalized_route }

    if entry
      route, block = entry
      [200, block.call]   # call the stored Proc
    else
      [404, "Not Found"]
    end
  end
end

router = TinyRouter.new

router.get("/login") { "login page" }
router.get("/hello/name") { "Hello, love you" }
router.post("/echo/x/y") { "POST handler" }

p router.routes

p router.call("GET", "/login/")
p router.call("GET", "/hello/name")
p router.call("POST", "/echo/x/y")
p router.call("GET", "/missing") 
