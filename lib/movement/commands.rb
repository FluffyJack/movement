require "movement/generate_command"

module Movement
  class Commands < Thor
    register(Movement::GenerateCommand, "generate", "generate", "Generate resources for your app")
  end
end
