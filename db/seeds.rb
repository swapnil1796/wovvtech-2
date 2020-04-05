# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

channels = Channel.create([{ name: 'ABC' }, { name: 'PQR' }, { name: 'ASD' }])

TvSeries.create([
  {
    name: 'Series 1',
    from_time: '09:00',
    to_time: '10:00',
    channel_id: channels.first.id
  },
  {
    name: 'Series 2',
    from_time: '10:00',
    to_time: '11:00',
    channel_id: channels.first.id
  },
  {
    name: 'Series 3',
    from_time: '11:00',
    to_time: '12:00',
    channel_id: channels.first.id
  },
  {
    name: 'Serial 1',
    from_time: '09:00',
    to_time: '10:00',
    channel_id: channels.second.id
  },
  {
    name: 'Serial 2',
    from_time: '10:00',
    to_time: '11:00',
    channel_id: channels.second.id
  },
  {
    name: 'Serial 3',
    from_time: '11:00',
    to_time: '12:00',
    channel_id: channels.second.id
  },
  {
    name: 'Show 1',
    from_time: '9:00',
    to_time: '10:00',
    channel_id: channels.last.id
  },
  {
    name: 'Show 2',
    from_time: '10:00',
    to_time: '11:00',
    channel_id: channels.last.id
  },
  {
    name: 'Show 3',
    from_time: '11:00',
    to_time: '12:00',
    channel_id: channels.last.id
  }
])
