# resource "jamfpro_smart_computer_group" "NEw" {
#   count = 25
#   name = "JL Computer Group NEW ${count.index}"
  
#   site_id = 1174
# }


# resource "jamfpro_advanced_computer_search" "test_search" {
#   count = 10
#   name = "Test name - ${count.index}"
#   # site_id = 1174
# }

# resource "jamfpro_script" "scripts_0002" {
#   count = 25
#   name            = "Category Testing Script-home-${count.index}"
#   script_contents = "hello world"
#   os_requirements = "13.1"
#   priority        = "BEFORE"
#   info = "Your script info here."

# }

# resource "jamfpro_script" "scripts_0003" {
#   name            = "Category Testing Script-cleanuptest-3"
#   script_contents = "hello world"
#   os_requirements = "13.1"
#   priority        = "BEFORE"
#   info = "Your script info here."
# }

# resource "jamfpro_script" "scripts_0004" {
#   name            = "Category Testing Script-cleanuptest-4"
#   script_contents = "hello world"
#   os_requirements = "13.1"
#   priority        = "BEFORE"
#   info = "Your script info here."
# }

# resource "jamfpro_account_group"  "jamf_pro_account_group_002" {
#   name         = "tf-example-account_group-testing-flattening"
#   access_level = "Full Access" // Full Access / Site Access / Group Access
#   privilege_set = "Administrator" 

#   member_ids = sort([1, 501, 72])
  
# }

# resource "jamfpro_advanced_computer_search" "new" {
#   name = "test search"
#   display_fields = ["Computer Name"]
    
  
# }


# resource "jamfpro_computer_extension_attribute" "test" {
#   name = "testing new config 4"
#   enabled = true
#   input_type = "script"
#   input_script = "echo hello world new"
# }