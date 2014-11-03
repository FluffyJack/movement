module Movement
  module Commands
    module Generators
      class View < Thor::Group
        include Thor::Actions

        argument :name
        class_option :destination_root, default: "app"

        def self.source_root
          File.dirname(__FILE__)
        end

        def generate
          template("templates/UIView.tt", "#{options[:destination_root]}/views/#{name}.rb")
        end
      end
    end
  end
end
