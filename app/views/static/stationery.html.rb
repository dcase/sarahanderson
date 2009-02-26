<% content_for :logo do %>
  <%= render :partial => 'common/gray_logo' %>
<% end %>

<div id="pieces-wrapper">
  <%= image_tag 'stationery-and-custom-invites.jpg', :size => '760x448', :alt => 'Stationery and Custome Invites: Coming soon' %>
</div>
<div id="stationery-footer">
  <%= image_tag 'by-appointment-only.gif', :size => '208x10', :alt => 'By appointment only 347-276-6211' %>
  <%= link_to image_tag('email-address.gif', :size => '197x13', :alt => 'info at sarah anderson design dot com', :mouseover => 'email-address_ro.gif'), {}, :href => "mailto:info@sarahandersondesign.com" %>
</div>
