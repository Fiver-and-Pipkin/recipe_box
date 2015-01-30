require('bundler/setup')
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @categories = Category.all()
  erb(:index)
end

post("/recipes") do
  recipe_name = params.fetch("recipe_name")
  category_id = params.fetch("category_id").to_i()
  recipe = Recipe.new({:recipe_name => recipe_name, :category_id => category_id})
  recipe.save()
  @category = Category.find(category_id)
  erb(:category)
end

post("/categories") do
  category_name = params.fetch("category_name")
  category = Category.new({:category_name => category_name, :id => nil})
  category.save()
  @categories = Category.all()
  erb(:index)
end

get("/categories/:id") do
  @category = Category.find(params.fetch("id").to_i())
  erb(:category)
end

get("/categories/:id/edit") do
  @category = Category.find(params.fetch("id").to_i())
  erb(:category_edit)
end

patch("/categories/:id") do
  category_name = params.fetch("category_name")
  @category = Category.find(params.fetch("id").to_i())
  @category.update({:category_id => category_id})
  erb(:category)
end

delete("/categories/:id") do
  @category = Category.find(params.fetch("id").to_i())
  @category.delete()
  @categories = Category.all()
  erb(:index)
end

get("/recipes/:id") do
  @recipe = Recipe.find(params.fetch("id").to_i())
  erb(:recipe)
end

get("/recipes/:id/edit") do
  @recipe = Recipe.find(params.fetch("id").to_i())
  erb(:recipe_edit)
end

patch("/recipes/:id") do
  recipe_name = params.fetch("recipe_name")
  @recipe = Recipe.find(params.fetch("id").to_i())
  @recipe.update({:recipe_name => recipe_name})
  redirect('/')
end

delete("/recipes/:id") do
  @recipe = Recipe.find(params.fetch("id").to_i())
  @recipe.delete()
  @recipes = Recipe.all()
  redirect('/')
end
