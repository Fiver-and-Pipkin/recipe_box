require('bundler/setup')
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end


get('/entree') do
  under construction
  erb(:entree)
end

get('/side') do
under construction
  erb(:side)
end


get('/dessert') do
  under construction
  erb(:dessert)
end

get('/add_recipe') do
  @recipes = Recipe.all()
  erb(:add_recipe)
end

post('/add_recipe') do
  recipe_name = params.fetch("recipe_name")
  @recipes = Recipe.create({:recipe_name => recipe_name})
  redirect('/add_recipe')
  erb(:add_recipe)
end
