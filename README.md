#Evening Active Record Challenges for Launch

##AR-QUERYING
Answer the following questions:

- How would you return all the recipes in your database?
- Recipe.all
- How would you return all the comments in your database?
- Comment.all
- How would you return the most recent recipe posted in your database?
- Recipe.all.last
- How would you return all the comments of the most recent recipe in your database?
- Recipe.all.last.comments
- How would you return the most recent comment of all your comments?
- Comment.all.last
- How would you return the recipe associated with the most recent comment in your database?
- Comment.all.last.recipe
- How would you return all comments that include the string brussels in them?
- Comment.where("comments.body LIKE ?", '%brussels%')
- Comment.where("body LIKE ?", '%brussels%')

##AR-VALIDATIONS
- Last night you created a Brussels Sprouts recipe blog. We are going to add some validations to it.
- Validate that the title of each recipe exists.


validates :name, presence: true

- Validate that the title of each recipe is unique.


validates :name, uniqueness: true

- Validate that the title of each recipe contains "Brussels sprouts" in it.


validates :name, inclusion: { in: %w(brussels sprouts)}

validates :name, inclusion: { in: ["Brussel Sprouts"] }

- Validate that the length of a comment be a maximum of 140 characters long.


validates :body, length: { maximum: 140 }

- Validate that a comment has a recipe.


validates :recipe_id, presence: true

- Add a field yield to your Recipe table. Yield is explained here. yield is optional, but if supplied, it must be greater than or equal to 1. Write a validation for this.


validates :yield, :numericality => { :greater_than_or_equal_to => 1 }
or
validates_length_of :yield, :minimum => 1



- Load up your app in irb and confirm that your validations work.

I did it pry, baby
