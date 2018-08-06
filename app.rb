require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    "#{params[:num1].to_i * params[:num2].to_i}"
  end


  get '/:year/:month/:day/:slug' do
    params[:year]  # => 2009
    params[:month] # => 10
    params[:day]   # => 20
    params[:post]  # => post.html
  end


  # Code your final two routes here:

end

# get '/goodbye/:name, a dynamic route that returns "Goodbye, (person's name).", a string. For example, navigating to localhost:9393/goodbye/jerome should display Goodbye, jerome.

# A dynamic route starting with /multiply that accepts two params (num1 and num2) and returns the product of the two numbers.
