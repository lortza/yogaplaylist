# run task like:
# rake data:assign_to_me

namespace :data do
  # this is deprecated
  desc "assign existing poses and playlists to admin user"

  task :assign_to_me => :environment do
    user = User.find_by(email: 'admin@email.com')

    puts "Assigning Poses"
    Pose.all.each do |pose|
      puts "#{pose.name} => #{user.email}"
      pose.update!(user_id: user.id)
    end

    puts "", "Assigning Playlists"
    Playlist.all.each do |playlist|
      puts "#{playlist.name} => #{user.email}"
      playlist.update!(user_id: user.id)
    end

    puts "Done!"
  end


end
