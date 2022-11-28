package workiro.tags.create

import future.keywords

default query := []

query = data.tags[_] {
	data.tags[_].user == input.user
	data.tags[_].account == input.account
	data.tags[_].isPrivate == input.isPrivate
}