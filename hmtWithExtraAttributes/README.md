Simple project using ruby 2.4 and rails 5.0.1.  This project isn't pretty but shows the minimal build that I have found at this time to use a has_many :through (hmt) relationship, importantly with additional fields (attributes) on the join table.

This project can be built with:
bundle install
rails db:migrate

I used the base scaffold and as such there are no specific unit tests for this project.  This is based on the code found: https://stackoverflow.com/questions/2182428/rails-nested-form-with-has-many-through-how-to-edit-attributes-of-join-model and built out.  

The model is topic (has content), article (has title) and linker (which links topic and article and has relevance attribute).  The view is all driven from the topics view (http://localhost:3000/topics) and the new (form.html.erb) drives the build.
