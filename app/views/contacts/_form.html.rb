<% form_for(@contact) do |f| %>

  <p>
    <%= image_tag 'label-your-name.gif', :size => '58x8', :alt => 'Your Name', :class => 'label' %><br />
    <%= f.text_field :name %>
  </p>
  <p>
    <%= image_tag 'label-email.gif', :size => '30x8', :alt => 'Email', :class => 'label' %><br />
    <%= f.text_field :email %>
  </p>
  <p>
    <%= image_tag 'label-phone.gif', :size => '34x8', :alt => 'Phone', :class => 'label' %><br />
    <%= f.text_field :phone %>
  </p>
  <p>
    <%= image_tag 'label-message.gif', :size => '47x8', :alt => 'Message', :class => 'label' %><br />
    <%= f.text_area :message, :rows => 10, :cols => 54 %>
  </p>

  <p id="submit">
    <%= image_submit_tag "submit.gif", :class => 'submit' %>
  </p>
<% end %>