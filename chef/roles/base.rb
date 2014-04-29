name "base"

run_list(
	"recipe[apt]",
	"recipe[rvm::system]",
	"recipe[vim]",
	"recipe[rake]"
)

default_attributes(
	"rvm" => {
	  "default_ruby" => "ruby-2.0.0"
	}
)
