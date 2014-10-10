desc "Compile them into dist"
task :compile => :samples do
  sh "coffee -p src/zimmer.coffee > dist/zimmer.js"
  
  if system('which minify')
    sh "minify dist/zimmer.js"
  end
end

desc "Create the samples.coffee from what's in the samples directory"
task :samples do
  puts "compiling samples/ directory into src/samples.coffee"
  output = "window.fx = window.fx || {} ; window.fx.samples = window.fx.samples || {};"
  Dir['./samples/*'].each do |sample|
    file = File.basename(sample)
    name, ext = file.split('.')
    output += "; window.fx.samples[#{name.inspect}] = 'data:audio/#{ext};base64,#{`base64 #{sample}`.chomp}';"
  end
  
  File.open('./dist/samples.js', 'w+') do |file|
    file.puts output
  end
end

task :default => :compile
