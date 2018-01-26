class View
  def print_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} #{recipe.name}: #{recipe.description}"
    end
  end

  def get_name
    get_attribute("Please enter recipe name:")
  end

  def get_description
    get_attribute("Please enter recipe description:")
  end

  def get_attribute(text)
    puts text
    gets.chomp
  end
end