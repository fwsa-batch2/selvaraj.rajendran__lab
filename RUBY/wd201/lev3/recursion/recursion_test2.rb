html = {
    :tag => "h1" ,
    :text => "this is the heading" ,
}

def render(node) 
if node[:tag] == "h1"
    puts "the tag is #{node[:tag]}"
    puts node[:text]
end

end

render(html)