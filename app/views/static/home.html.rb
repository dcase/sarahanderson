<% content_for :logo do %>
  <%= render :partial => 'common/red_logo' %>
<% end %>
<% content_for :page_js do %>
  <script type="text/javascript">
  $(document).ready(function(){
    $('#slideshow').cycle();
  });
  </script>
<% end %>
<div id="pieces-wrapper">
  <div id="slideshow">
  <% for piece in @images do %>
    <%= image_tag piece.image.url, :class => 'slide' %>
  <% end %>
  </div>
</div>
<div id="home-footer">
  <%= image_tag 'art-direction-and-design.gif', :size => '127x8', :alt => 'Art Direction and Design' %>
  <span id="copyright">&copy;2009 Sarah Anderson Design. All Rights Reserved.</span>
</div>
<% if authorized? %>
	<% content_for :admin_toolbar do %>
		<li><%= image_tag 'add.png', :size => "16x16", :alt=> 'Add Image' %><%= link_to 'Add to Slideshow', new_category_piece_path(@category) %></li>
		<li><%= image_tag 'drag_handle.png', :size => "16x16", :alt=> 'Manage Image Order' %><%= link_to 'Manage Images', category_pieces_path(@category) %></li>
	<% end %>
<% end %>