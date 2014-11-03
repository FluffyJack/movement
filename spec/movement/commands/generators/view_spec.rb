require "helper"
require "movement/commands/generators/view"

module Movement
  module Commands
    module Generators
      describe View do
        after do
          ::FileUtils.rm_rf(destination_root)
        end

        it "creates the view file" do
          command = View.new(["hello"], { destination_root: destination_root })
          capture(:stdout) { command.invoke_all }
          expect(File.exist?(File.join(destination_root, "views/hello.rb"))).to be true
        end

        it "writes the basic class skeleton" do
          command = View.new(["hello"], { destination_root: destination_root })
          capture(:stdout) { command.invoke_all }
          expect(File.read(File.join(destination_root, "views/hello.rb"))).to include "class Hello < UIView"
        end

        it "can handle multi-word class/file names" do
          command = View.new(["hello_world"], { destination_root: destination_root })
          capture(:stdout) { command.invoke_all }
          expect(File.read(File.join(destination_root, "views/hello_world.rb"))).to include "class HelloWorld < UIView"
        end
      end
    end
  end
end
