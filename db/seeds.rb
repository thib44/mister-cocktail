ingredients = %w(lemon ice mint leaves redbull jagermeister sugar tonic gin rhum)

ingredients.each { |ingredient| Ingredient.create(name: ingredient) }
