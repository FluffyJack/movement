module Movement
  class Commands < Thor::Group
    include Thor::Actions

    argument :generator
    argument :name

    def self.source_root
      File.dirname(__FILE__)
    end

    def generate
      if generator == "view"
        template("templates/UIView.tt", "app/views/#{name}.rb")
      end
    end
  end
end
