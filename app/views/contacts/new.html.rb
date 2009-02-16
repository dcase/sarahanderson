<% content_for :body_class do %>contact<% end %>
<div id="contact-wrapper">
  <div id="contact_info_container">
    <%= image_tag 'contact-me.gif', :size => '182x21', :alt => 'Contact me' %><br />
    <%= link_to image_tag('contact-info.gif', :size => '183x28', :mouseover => 'contact-info_ro.gif'), {}, :href => 'mailto:info@sarahandersondesign.com' %>
    <div id="errors_container"> 
      <%= render :partial => 'error_messages', :object => @contact %>
    </div>
  </div>
  <div id="contact_form_container">
    <%= render :partial => 'form', :object => @contact %>
  </div>
</div>
<div id="home-footer">
  <%= image_tag 'art-direction-and-design.gif', :size => '118x8', :alt => 'Art Direction and Design' %>
</div>

<% content_for :page_js do %>
  <script type="text/javascript">
    $(document).ready(function() {
      $("#new_contact").submitWithAjax();
    })
  </script>
<% end %>