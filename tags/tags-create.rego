package workiro.tags.create

import future.keywords

default allow := false
allow if can_create

can_create {
    not tag_is_private
    user_is_owner
}

can_create {
	tag_is_private
}

tag_is_private if input.isPrivate

user_is_owner if {
	some account in data.accounts
	some user in account.users
	user.userId == input.user
	user.owner
}

action_is_read if input.action == "read"