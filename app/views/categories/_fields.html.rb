<%= f.error_messages %>

  <p>
    <%= f.label :name %><br />
    <%= f.text_field :name %>
  </p>
  <p>
    <%= f.label 'is a subcategory of:' %><br />
    <%= f.select :parent_id, nested_set_options(Category, @category) {|i| "#{'-' * i.level} #{i.name}" }, :include_blank => 'Choose...' %>
  </p>
  <p>
    <%= f.label 'should it be displayed?' %><br />
    <%= f.check_box :is_visible %>
  </p>
  <p>
    <%= f.label 'is this the homepage?' %><br />
    <%= f.check_box :is_home %>
  </p>
  