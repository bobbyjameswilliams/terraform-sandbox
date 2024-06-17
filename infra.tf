# resource "jamfpro_computer_group" "differe2ance" {
#   name = file("resource_names/group_name.txt")
#   is_smart = true  # Set to true if the group is a Smart group, otherwise set to false

#   criteria {
#     name          = "Last Inventory Update"
#     priority      = 0
#     and_or        = "and"  # or "or", defaults to "and" if not provided
#     search_type   = "is"   # or any other supported search type
#     value         = "1"
#     opening_paren = false  # true or false, defaults to false if not provided
#     closing_paren = false  # true or false, defaults to false if not provided
#   }

#     criteria {
#     name          = "Last Inventory Update"
#     priority      = 1
#     and_or        = "and"  # or "or", defaults to "and" if not provided
#     search_type   = "is"   # or any other supported search type
#     value         = "Criterion Value"
#     opening_paren = false  # true or false, defaults to false if not provided
#     closing_paren = false  # true or false, defaults to false if not provided
#   }

#   # computers {
#   #   id = 16
#   # }
# }


resource "jamfpro_category" "category2" {
  count = 2
  name = "tf-example-category-locked-cookie-${count.index}"
  priority = 1
}

