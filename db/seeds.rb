

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

response = RestClient.get(url)

parse = JSON.parse(response)

parse["drinks"].each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end
