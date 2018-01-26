# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Medium.destroy_all
Playlist.destroy_all
Comment.destroy_all
#create users
5.times do
  User.create(username: Faker::Name.name, theme: 'default')
end

#create media
  Medium.create!(kind: "video", title: "DEVELOPERS ", artist: "Microsoft guy", likes: 3, filesource: "Media/video.mp4")
  Medium.create!(kind: "video", title: "Android Wireless Earbuds ", artist: "Tech guy", likes: 1, filesource: "Media/hd.mp4")
  Medium.create!(kind: "audio", title: "Pokemon R Song ", artist: "Pokemon people", likes: 0, filesource: "Media/pokemonr.mp3")  # Figure out how to make the filesources happen.
  Medium.create!(kind: "video", title: "Spongebob Wallet ", artist: "Cartoon people", likes: 3, filesource: "Media/wallet.mp4")
  Medium.create!(kind: "audio", title: "Pokemon X Song ", artist: "Pokemon people", likes: 1, filesource: "Media/pokemonx.mp3")
  Medium.create!(kind: "video", title: "Spogebob Texas ", artist: "Cartoon people", likes: 0, filesource: "Media/texas.mp4")
  Medium.create!(kind: "video", title: "Wanderland ", artist: "Hermanos Inglesos", likes: 0, filesource: "Media/Hermanos Inglesos feat. MeMe - Wanderland.mp4")
  Medium.create!(kind: "video", title: "Cat Maze ", artist: "Cat lover", likes: 0, filesource: "Media/AMEOW-ZING 50 Box Cat Maze!.mp4")
  Medium.create!(kind: "video", title: "Wanderland ", artist: "Hermanos Inglesos", likes: 0, filesource: "Media/Hermanos Inglesos feat. MeMe - Wanderland.mp4")
  Medium.create!(kind: "video", title: "Talking Babies ", artist: "parents", likes: 0, filesource: "Media/Talking Twin Babies - PART 2 - OFFICIAL VIDEO.mp4")
  Medium.create!(kind: "video", title: "Community - Halloween ", artist: "Community NBC", likes: 31, filesource: "Media/CommunityHalloween.mp4")
  Medium.create!(kind: "video", title: "Community - Dean ", artist: "Community NBC", likes: 30, filesource: "Media/CommunityDean.mp4")
  Medium.create!(kind: "video", title: "Community - Biblioteca ", artist: "Community NBC", likes: 30, filesource: "Media/CommunityBiblioteca.mp4")
  Medium.create!(kind: "video", title: "Community - Darkest Timeline ", artist: "Community NBC", likes: 46, filesource: "Media/CommunityTimeline.mp4")
  Medium.create!(kind: "audio", title: "Jazzy French ", artist: "bensounds.com", likes: 2, filesource: "Media/JazzyFrench.mp3")
  Medium.create!(kind: "audio", title: 'Jazz Comedy ', artist: "bensounds.com", likes: 3, filesource: "Media/JazzComedy.mp3")

#create commments
5.times do
  Comment.create(content: Faker::Lorem.sentence, user_id: User.all.sample.id , medium_id: Medium.all.sample.id)
end

#create playlists
5.times do
  Playlist.create!(name: Faker::Lorem.word, medium_id: Medium.all.sample.id, user_id: User.all.sample.id)
end
