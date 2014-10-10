desc "Compile them into dist"
task :compile do
  system "coffee -p src/samples.coffee src/zimmer.coffee > dist/zimmer.js"
end

desc "Create the samples.coffee from what's in the samples directory"
task :samples do
  output = "window.fx = {} unless window.fx? ; window.fx.samples = {}\n"
  Dir['./samples/*'].each_with_object({}) do |sample, result|
    file = File.basename(sample)
    name, ext = file.split('.')
    output += "window.fx.samples[#{name.inspect}] = 'data:audio/#{ext};base64,#{`base64 #{sample}`}'"
    output += "\n"
  end
  
  File.open('./src/samples.coffee', 'w+') do |file|
    file.puts output
  end
end