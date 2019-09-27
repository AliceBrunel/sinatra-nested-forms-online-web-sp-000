
require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      
      erb :root
    
    end
    
    get '/new' do 
      
      @pirate = Pirate.new(params[:student])
 
      params[:student][:courses].each do |details|
        Course.new(details)
      end
     
      @courses = Course.all
      
      erb '/pirates/new'
      
    end

  end
end
