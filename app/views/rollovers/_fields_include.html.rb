<h2>Rollover Image:</h2>
  <% fields_for :rollover do |r| %>
    <%= r.error_messages %>
	    <p>
  	  <label>Active State:</label><br />
  	  <%= r.file_field :active %>
  	  </p>
  	  <p>
  	  <label>Inctive State:</label><br />
  	  <%= r.file_field :inactive %>
  	  </p>
  	  <p>
  	  <label>Over State:</label><br />
  	  <%= r.file_field :over %>
  	  </p>
  <% end %>