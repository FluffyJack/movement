class MyThorCommand < Thor
  desc "foo", "Prints foo"
  def foo
    puts "foo"
  end
end
