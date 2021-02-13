User
has_many rides
has_many attractions, through rides
name
password
nausea
happiness
tickets
height

Attraction
has_many rides
has_many users, through rides
name
tickets
neausea_rating
happiness_rating
min_height

ride
belongs_to user
belongs_to attraction
user_id
attraction_id