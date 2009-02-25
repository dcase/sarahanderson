<% content_for :body_class do %>contact<% end %>
<div id="contact-wrapper">
  <div id="contact_info_container">
    <%= image_tag 'contact-me.gif', :size => '182x21', :alt => 'Contact me' %><br />
    <%= link_to image_tag('contact-email.gif', :size => '183x14', :mouseover => 'contact-email_ro.gif'), {}, :href => 'mailto:info@sarahandersondesign.com' %>
    <%= image_tag 'contact-phone.gif', :size => '74x10', :alt => '(347) 276-6211' %>
    <div id="errors_container"> 
      <%= render :partial => 'error_messages', :object => @contact %>
    </div>
  </div>
  <div id="contact_form_container">
    <%= render :partial => 'form', :object => @contact %>
  </div>
</div>

<% content_for :page_js do %>
  <script type="text/javascript">
    $(document).ready(function() {
      $("#new_contact").submitWithAjax();
    })
  </script>
<% end %>