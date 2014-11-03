require "movement/commands/generate"

module Movement
  module Commands
    class Core < Thor
      register(Commands::Generate, "generate", "generate", "Generate resources for your app")
    end
  end
end
