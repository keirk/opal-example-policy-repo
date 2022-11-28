package workiro.tags.create

import future.keywords

default query := []

query = data.tags[_] {
	user_is_owner
	data.tags[_].account == input.account
	data.tags[_].isPrivate == input.isPrivate
}

query = data.tags[_] {
	data.tags[_].user == input.user
	data.tags[_].account == input.account
	data.tags[_].isPrivate == input.isPrivate
}

user_is_owner if {
	some account in data.accounts
	some user in account.users
	user.userId == input.user
	user.owner
}
