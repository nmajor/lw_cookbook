class Controller
  def initialize(cookbook) 
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # get array from cookbook
    recipes = @cookbook.all
    # View:
      # display the list
    @view.print_recipes(recipes)
  end

  def create
    # view:
      # get the name from the user
    name = @view.get_name
      # get the description from the user
    description = @view.get_description
    # create new recipe object
    recipe = Recipe.new(name, description)
    # add it to the cookbook
    @cookbook.add(recipe)
  end
end