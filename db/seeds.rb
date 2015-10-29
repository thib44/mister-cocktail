Ingredient.destroy_all
ingredients_attributes = [
  {
    name:         "Vodka"
  },
  {
    name:         "Wiksi"
  },
  {
    name:         "Coca"
  }
  {
    name:         "Soda"
  }
  {
    name:         "White spirit"
  }
]
ingredients_attributes.each { |params| Ingredient.create!(params) }
