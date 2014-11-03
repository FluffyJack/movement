require "helper"
require "movement/commands/generate"

module Movement
  module Commands
    describe Generate do
      after do
        ::FileUtils.rm_rf(destination_root)
      end

      context "view" do
        it "creates the view file" do
          command = Generate.new(["view", "hello"], { destination_root: destination_root })
          capture(:stdout) { command.invoke_all }
          expect(File.exist?(File.join(destination_root, "views/hello.rb"))).to be true
        end

        it "writes the basic class skeleton" do
          command = Generate.new(["view", "hello"], { destination_root: destination_root })
          capture(:stdout) { command.invoke_all }
          expect(File.read(File.join(destination_root, "views/hello.rb"))).to include "class Hello < UIView"
        end

        it "can handle multi-word class/file names" do
          command = Generate.new(["view", "hello_world"], { destination_root: destination_root })
          capture(:stdout) { command.invoke_all }
          expect(File.read(File.join(destination_root, "views/hello_world.rb"))).to include "class HelloWorld < UIView"
        end
      end
    end
  end
end
