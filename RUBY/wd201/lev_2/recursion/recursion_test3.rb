# <div>
# <h1>i am selva</h1>
# <div>
#<h2>this is great</h2>
# <p> this is exciting</p>
# </div>
# </div>

node1 = {
  :tag => "h1",
  :text => "i am selva",
}
node2 = {
  :tag => "div",
  :child => [
    {
          :tag => "h2",
          :text => "i am trying recursion",
        },
    {
          :tag => "p",
          :text => "this is exciting",
        },
  ],
}
html = {
  :tag => "div",
  :child => [node1, node2],
}

def render(node)
  if node[:tag] == "h1"
    puts "*** #{node[:text].upcase} ***"
  elsif node[:tag] == "h2"
    puts "* #{node[:text].capitalize} *"
  elsif node[:tag] == "p"
    puts node[:text]
  elsif node[:tag] == "div"
    child = node[:child]
    child.each { |x| render(x) }
  end
end

render(html)
