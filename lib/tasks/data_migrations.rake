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

  desc "make all poses private"
  task :private_poses => :environment do
    Pose.all.each do |pose|
      pose.update!(private: true)
    end
  end

  desc "make all poses private"
  task :reveal_some_poses => :environment do
    poses = Pose.where(name: ['warrior1', 'warrior2', 'reverse warrior', 'standing forward bend', 'runners pose', 'triangle pose left arm up', 'triangle pose right arm up'])
    poses.each do |pose|
      pose.update!(private: false)
    end
  end


end
