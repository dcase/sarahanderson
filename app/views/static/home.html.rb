<% content_for :logo do %>
  <%= render :partial => 'common/red_logo' %>
<% end %>
<% 
if !session[:home_image]
  session[:home_image] = 0
elsif session[:home_image] == @images.count - 1
  session[:home_image] = 0
else
  session[:home_image] += 1
end
%>
<div id="pieces-wrapper">
  <%= image_tag @images[session[:home_image]].image.url %>
</div>
<div id="home-footer">
  <%= image_tag 'art-direction-and-design.gif', :size => '118x8', :alt => 'Art Direction and Design' %>
</div>
<% if authorized? %>
	<% content_for :admin_toolbar do %>
		<li><%= image_tag 'add.png', :size => "16x16", :alt=> 'Add Image' %><%= link_to 'Add to Slideshow', new_category_piece_path(@category) %></li>
		<li><%= image_tag 'drag_handle.png', :size => "16x16", :alt=> 'Manage Image Order' %><%= link_to 'Manage Images', category_pieces_path(@category) %></li>
	<% end %>
<% end %>