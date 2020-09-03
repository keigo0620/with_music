# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.create!(
category:'J-POP'
        )
Genre.create!(
category:'R&B'
	)
Genre.create!(
category:'HIP HOP'
	)
Genre.create!(
category:'K-POP'
	)
Genre.create!(
category:'Huse Music'
	)
Genre.create!(
category:'ヒーリングMusic'
	)
Genre.create!(
category:'Rock'
	)
Genre.create!(
category:'アニソン'
	)
Genre.create!(
category:'Drive Music'
	)
Location.create!(
	seen: '夏に聞きたい曲'
	)
Location.create!(
	seen: '冬に聞きたい曲'
	)
Location.create!(
	seen: 'ドライブミュージック'
	)
Location.create!(
	seen: '通勤、通学'
	)
Location.create!(
	seen: '家事をしながら'
	)
Location.create!(
	seen: 'ティータイム'
	)
Location.create!(
	seen: 'リラックス'
	)
