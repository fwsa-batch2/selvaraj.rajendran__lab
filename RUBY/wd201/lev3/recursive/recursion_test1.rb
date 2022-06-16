node = {
  :tag => "h1",
  :text => "ruby is fun",
}
html = {
  :tag => "div",
  :child => [node],
}

def render(node)
  if node[:tag] == "h1"
    puts "the tag is #{node[:tag]}"
    puts node[:text]
  elsif node[:tag] == "div"
    child = node[:child]
    child.each { |x| render(x) }
  end
end

render(html)
