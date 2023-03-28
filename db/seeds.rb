# User.create([
#   {name: "@johnny_lee", email: "johnny@example.com", password_digest: "password", image: "https://static.wikia.nocookie.net/thechallenge9148/images/7/72/JohnnyRoD.jpeg/revision/latest?cb=20230301182229", bio: "UMO 2020, Track & Field"},
#   {name: "@jeremiah_white", email: "jeremiah@example.com", password_digest: "password1", image: "https://static.wikia.nocookie.net/thechallenge9148/images/2/2e/JeremiahSLA.png/revision/latest?cb=20210714190012", bio: "Mississippi Born and Raised"},
#   {name: "@neil_ellison", email: "neil@example.com", password_digest: "password2", image: "https://media.licdn.com/dms/image/C5603AQF2s5yu0TBY8w/profile-displayphoto-shrink_800_800/0/1657556045423?e=2147483647&v=beta&t=-4KMO85c7dPM_Iilt5j46_G36W9sZofFRO7zKDjSH_I", bio: "757/LA"}
# ])

# Tweet.create([
#   {user_id: 1, text: "Just left the gym #tired"},
#   {user_id: 2, text: "Can't wait to go back to Mississippi to visit my horses", image: "https://www.aspca.org/sites/default/files/field/image/blog-og-image/blog_horse-code-part-one_011922_fb.jpg"},
#   {user_id: 3, text: "Just coded for 5 hours #tired"}
# ])

# Like.create([
#   {tweet_id: 1, user_id: 2},
#   {tweet_id: 2, user_id: 3},
#   {tweet_id: 3, user_id: 1}
# ])

Relationship.create([
{follower_id: 1, leader_id: 2},
{follower_id: 2, leader_id: 3},
{follower_id: 3, leader_id: 1}
])