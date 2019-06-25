require "sinatra"
require "googlebooks"

get "/" do
  erb :home
end

get "/results" do
  @results = GoogleBooks.search("#{params[:book_title]}")
  @first = @results.first
  erb :results
end
