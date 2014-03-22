require 'yaml'

def build_section(base, path, map = nil)
  p "Build section: #{path}"
  Dir.mkdir(File.join(base,path)) unless File.directory? File.join(base,path)
  build_index base, File.join(path,"index.jade")

  return unless map

  if map.is_a?(Array)
    map.each {|name| build_section(base,File.join(path,name))} 
  elsif map.is_a?(Hash)
    map.each {|name, submap| build_section(base, File.join(path,name), submap)}
  end

end

def build_index(base,path)
  
  if File.exists? File.join(base,path)
    p "Page exists: #{path}"
    return
  end

  p "Build page: #{path}"

  pref = "../"*(path.split(/[\\\/]/).size-2)

  contents = <<-EOS
extend #{pref}_partials/layout
block title
  title АЛЬТЕРНАТИВА: летняя многопрофильная школа (Тула)
block content
  EOS

  File.write File.join(base,path), contents 

end


conf = YAML::load(File.open('site.yml'))

build_section File.join(".",conf["root"]), "", conf["map"]