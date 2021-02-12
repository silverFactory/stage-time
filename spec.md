# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (open_mic has_many instruments)
- [x] Include at least one belongs_to relationship (instrument belongs to an open_mic)
- [x] Include at least two has_many through relationships (open_mic has_many users through supports, user has_many open_mics through hosts)
- [x] Include at least one many-to-many relationship (open_mic has_many users through supports, user has_many open_mics through hosts)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (the support model has title and body attributes)
- [x] Include reasonable validations for simple model objects (instrument, open_mic, support, user)
- [x] Include a class level ActiveRecord scope method (support model has a lend_a_hand scope and missed_connection scope to separate out the different applications of the model)
- [x] Include signup (part of user model, password secured with Bcrypt)
- [x] Include login (part of user model, password secured with Bcrypt)
- [x] Include logout (part of user model, password secured with Bcrypt)
- [x] Include third party signup/login (OmniAuth-facebook)
- [x] Include nested resource show or index (open_mics/2/supports/1)
- [x] Include nested resource "new" form (open_mics/2/supports/new)
- [x] Include form display of validation errors (/open_mics/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
