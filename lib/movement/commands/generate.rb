require "movement/commands/generators/view"

module Movement
  module Commands
    class Generate < Thor
      register(Generators::View, "view", "view", "Generate a view")
    end
  end
end
