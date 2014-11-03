module Movement
  module Commands
    class Generate < Thor::Group
      include Thor::Actions

      argument :generator
      argument :name
      class_option :destination_root, default: "app"

      def self.source_root
        File.dirname(__FILE__)
      end

      def generate
        if generator == "view"
          template("templates/UIView.tt", "#{options[:destination_root]}/views/#{name}.rb")
        end
      end
    end
  end
end
