# frozen_string_literal: true

puts 'Destroy AllTheThings!'
# User.destroy_all
# PlaylistPose.destroy_all
# Pose.destroy_all
# Playlist.destroy_all

user = User.find_or_create_by(email: 'admin@email.com') do |user|
  user.admin = true,
  user.password = 'password',
  user.password_confirmation = 'password'
end

puts 'Create Number Poses'
one = user.poses.find_or_create_by(audio_file: '1.wav') { |pose| pose.name = 'one'; pose.image_file = '1.jpg' }
two = user.poses.find_or_create_by(audio_file: '2.wav') { |pose| pose.name = 'two'; pose.image_file = '2.jpg' }
three = user.poses.find_or_create_by(audio_file: '3.wav') { |pose| pose.name = 'three'; pose.image_file = '3.jpg' }
four = user.poses.find_or_create_by(audio_file: '4.wav') { |pose| pose.name = 'four'; pose.image_file = '4.jpg' }
five = user.poses.find_or_create_by(audio_file: '5.wav') { |pose| pose.name = 'five'; pose.image_file = '5.jpg' }

puts 'Create Numbers Playlists'
playlist = user.playlists.find_or_create_by(name: 'one two one') { |pose| pose.hold_time = 3 }
  playlist.playlist_poses.find_or_create_by(sequence_number: 1, pose_id: one.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 2, pose_id: two.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 3, pose_id: one.id)

playlist = user.playlists.find_or_create_by(name: 'one two three four five') { |pose| pose.hold_time = 3 }
  playlist.playlist_poses.find_or_create_by(sequence_number: 1, pose_id: one.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 2, pose_id: two.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 3, pose_id: three.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 4, pose_id: four.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 5, pose_id: five.id)

puts 'Create Yoga Poses'
begin_at_head_of_yoga_mat = user.poses.find_or_create_by(audio_file: 'begin_at_head_of_yoga_mat.m4a') { |pose| pose.name = 'begin_at_head_of_yoga_mat'; pose.image_file = 'standing_straight.png' }
tree = user.poses.find_or_create_by(audio_file: 'tree.m4a') { |pose| pose.name = 'tree'; pose.image_file = 'tree.png' }
dive_down_to_standing_fwd_bend = user.poses.find_or_create_by(audio_file: 'dive_down_to_standing_fwd_bend.m4a') { |pose| pose.name = 'dive_down_to_standing_fwd_bend'; pose.image_file = 'standing_forward_bend.png' }
raise_up_to_flat_back = user.poses.find_or_create_by(audio_file: 'raise_up_to_flat_back.m4a') { |pose| pose.name = 'raise_up_to_flat_back'; pose.image_file = 'flat_back.png' }
back_down_to_standing_fwd_bend = user.poses.find_or_create_by(audio_file: 'back_down_to_standing_fwd_bend.m4a') { |pose| pose.name = 'back_down_to_standing_fwd_bend'; pose.image_file = 'standing_forward_bend.png' }
jump_back_to_plank = user.poses.find_or_create_by(audio_file: 'jump_back_to_plank.m4a') { |pose| pose.name = 'jump_back_to_plank'; pose.image_file = 'plank.png' }
slowly_lower_to_chaturanga = user.poses.find_or_create_by(audio_file: 'slowly_lower_to_chaturanga.m4a') { |pose| pose.name = 'slowly_lower_to_chaturanga'; pose.image_file = 'chaturanga.png' }
down_to_floor_up_to_cobra = user.poses.find_or_create_by(audio_file: 'down_to_floor_up_to_cobra.m4a') { |pose| pose.name = 'down_to_floor_up_to_cobra'; pose.image_file = 'cobra.png' }
push_back_downward_dog_right_leg = user.poses.find_or_create_by(audio_file: 'push_back_downward_dog_right_leg.m4a') { |pose| pose.name = 'push_back_downward_dog_right_leg'; pose.image_file = 'downward_dog_right_leg.png' }
push_back_downward_dog_left_leg = user.poses.find_or_create_by(audio_file: 'push_back_downward_dog_left_leg.m4a') { |pose| pose.name = 'push_back_downward_dog_left_leg'; pose.image_file = 'downward_dog_left_leg.png' }

swing_right_leg_runners_pose = user.poses.find_or_create_by(audio_file: 'swing_right_leg_runners_pose.m4a') { |pose| pose.name = 'swing_right_leg_runners_pose'; pose.image_file = 'runners_pose.png' }
swing_left_leg_runners_pose = user.poses.find_or_create_by(audio_file: 'swing_left_leg_runners_pose.m4a') { |pose| pose.name = 'swing_left_leg_runners_pose'; pose.image_file = 'runners_pose.png' }

arms_above_head_for_crescent_pose = user.poses.find_or_create_by(audio_file: 'arms_above_head_for_crescent_pose.m4a') { |pose| pose.name = 'arms_above_head_for_crescent_pose'; pose.image_file = 'crescent_pose.png' }
swing_arm_back_warrior_2 = user.poses.find_or_create_by(audio_file: 'swing_arm_back_warrior_2.m4a') { |pose| pose.name = 'swing_arm_back_warrior_2'; pose.image_file = 'warrior2.png' }
lean_back_into_reverse_warrior = user.poses.find_or_create_by(audio_file: 'lean_back_into_reverse_warrior.m4a') { |pose| pose.name = 'lean_back_into_reverse_warrior'; pose.image_file = 'reverse_warrior.png' }
straighten_for_standing_reverse_warrior = user.poses.find_or_create_by(audio_file: 'straighten_for_standing_reverse_warrior.m4a') { |pose| pose.name = 'straighten_for_standing_reverse_warrior'; pose.image_file = 'standing_reverse_warrior.png' }

triangle_pose_left_arm_up = user.poses.find_or_create_by(audio_file: 'triangle_pose_left_arm_up.m4a') { |pose| pose.name = 'triangle_pose_left_arm_up'; pose.image_file = 'triangle_pose_left_arm_up.png' }
triangle_pose_right_arm_up = user.poses.find_or_create_by(audio_file: 'triangle_pose_right_arm_up.m4a') { |pose| pose.name = 'triangle_pose_right_arm_up'; pose.image_file = 'triangle_pose_right_arm_up.png' }

reverse_warrior = user.poses.find_or_create_by(audio_file: 'reverse_warrior.m4a') { |pose| pose.name = 'reverse_warrior'; pose.image_file = 'reverse_warrior.png' }
warrior2 = user.poses.find_or_create_by(audio_file: 'warrior2.m4a') { |pose| pose.name = 'warrior2'; pose.image_file = 'warrior2.png' }
warrior1 = user.poses.find_or_create_by(audio_file: 'warrior1.m4a') { |pose| pose.name = 'warrior1'; pose.image_file = 'warrior1.png' }
runners_pose = user.poses.find_or_create_by(audio_file: 'runners_pose.m4a') { |pose| pose.name = 'runners_pose'; pose.image_file = 'runners_pose.png' }
collapse_into_pigeon = user.poses.find_or_create_by(audio_file: 'collapse_into_pigeon.m4a') { |pose| pose.name = 'collapse_into_pigeon'; pose.image_file = 'pigeon.png' }

swing_right_leg_up_to_one_leg_downward_dog = user.poses.find_or_create_by(audio_file: 'swing_right_leg_up_to_one_leg_downward_dog.m4a') { |pose| pose.name = 'swing_right_leg_up_to_one_leg_downward_dog'; pose.image_file = 'downward_dog_right_leg.png' }
swing_left_leg_up_to_one_leg_downward_dog = user.poses.find_or_create_by(audio_file: 'swing_left_leg_up_to_one_leg_downward_dog.m4a') { |pose| pose.name = 'swing_left_leg_up_to_one_leg_downward_dog'; pose.image_file = 'downward_dog_left_leg.png' }

leg_up_into_one_legged_chaturanga = user.poses.find_or_create_by(audio_file: 'leg_up_into_one_legged_chaturanga.m4a') { |pose| pose.name = 'leg_up_into_one_legged_chaturanga'; pose.image_file = 'chaturanga.png' }
push_up_to_upward_dog = user.poses.find_or_create_by(audio_file: 'push_up_to_upward_dog.m4a') { |pose| pose.name = 'push_up_to_upward_dog'; pose.image_file = 'upward_dog.png' }

side_plank_right_hand_down = user.poses.find_or_create_by(audio_file: 'side_plank_right_hand_down.m4a') { |pose| pose.name = 'side_plank_right_hand_down'; pose.image_file = 'side_plank_right_hand_down.png' }
side_plank_left_hand_down = user.poses.find_or_create_by(audio_file: 'side_plank_left_hand_down.m4a') { |pose| pose.name = 'side_plank_left_hand_down'; pose.image_file = 'side_plank_left_hand_down.png' }

down_to_downward_dog = user.poses.find_or_create_by(audio_file: 'down_to_downward_dog.m4a') { |pose| pose.name = 'down_to_downward_dog'; pose.image_file = 'downward_dog.png' }
jump_up_to_standing_fwd_bend = user.poses.find_or_create_by(audio_file: 'jump_up_to_standing_fwd_bend.m4a') { |pose| pose.name = 'jump_up_to_standing_fwd_bend'; pose.image_file = 'standing_forward_bend.png' }

half_moon_pose_standing_on_right = user.poses.find_or_create_by(audio_file: 'half_moon_pose_standing_on_right.m4a') { |pose| pose.name = 'half_moon_pose_standing_on_right'; pose.image_file = 'half_moon_pose_standing_on_right.png' }
half_moon_pose_standing_on_left = user.poses.find_or_create_by(audio_file: 'half_moon_pose_standing_on_left.m4a') { |pose| pose.name = 'half_moon_pose_standing_on_left'; pose.image_file = 'half_moon_pose_standing_on_left.png' }

come_back_down_to_standing_fwd_bend = user.poses.find_or_create_by(audio_file: 'come_back_down_to_standing_fwd_bend.m4a') { |pose| pose.name = 'come_back_down_to_standing_fwd_bend'; pose.image_file = 'standing_forward_bend.png' }

one_leg_tree_on_right = user.poses.find_or_create_by(audio_file: 'one_leg_tree_on_right.m4a') { |pose| pose.name = 'one_leg_tree_on_right'; pose.image_file = 'one_leg_tree_on_right.png' }
one_leg_tree_on_left = user.poses.find_or_create_by(audio_file: 'one_leg_tree_on_left.m4a') { |pose| pose.name = 'one_leg_tree_on_left'; pose.image_file = 'one_leg_tree_on_left.png' }

left_foot_back_on_floor_namaste = user.poses.find_or_create_by(audio_file: 'left_foot_back_on_floor_namaste.m4a') { |pose| pose.name = 'left_foot_back_on_floor_namaste'; pose.image_file = 'namaste.png' }
right_foot_back_on_floor_namaste = user.poses.find_or_create_by(audio_file: 'right_foot_back_on_floor_namaste.m4a') { |pose| pose.name = 'right_foot_back_on_floor_namaste'; pose.image_file = 'namaste.png' }

Pose.all.each do |pose|
  new_name = pose.name.tr('_', ' ')
  pose.update!(name: new_name)
end


puts 'Create Yoga Playlist'
playlist = user.playlists.find_or_create_by(name: 'flexibility playlist') { |pose| pose.hold_time = 5 }
  playlist.playlist_poses.find_or_create_by(sequence_number: 1, pose_id: begin_at_head_of_yoga_mat.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 2, pose_id: tree.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 3, pose_id: dive_down_to_standing_fwd_bend.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 4, pose_id: raise_up_to_flat_back.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 5, pose_id: back_down_to_standing_fwd_bend.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 6, pose_id: jump_back_to_plank.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 7, pose_id: slowly_lower_to_chaturanga.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 8, pose_id: down_to_floor_up_to_cobra.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 9, pose_id: push_back_downward_dog_right_leg.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 10, pose_id: swing_right_leg_runners_pose.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 11, pose_id: arms_above_head_for_crescent_pose.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 12, pose_id: swing_arm_back_warrior_2.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 13, pose_id: lean_back_into_reverse_warrior.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 14, pose_id: straighten_for_standing_reverse_warrior.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 15, pose_id: triangle_pose_left_arm_up.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 16, pose_id: reverse_warrior.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 17, pose_id: warrior2.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 18, pose_id: warrior1.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 19, pose_id: runners_pose.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 20, pose_id: collapse_into_pigeon.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 21, pose_id: swing_right_leg_up_to_one_leg_downward_dog.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 22, pose_id: leg_up_into_one_legged_chaturanga.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 23, pose_id: push_up_to_upward_dog.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 24, pose_id: side_plank_right_hand_down.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 25, pose_id: down_to_downward_dog.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 26, pose_id: jump_up_to_standing_fwd_bend.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 27, pose_id: half_moon_pose_standing_on_right.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 28, pose_id: come_back_down_to_standing_fwd_bend.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 29, pose_id: one_leg_tree_on_right.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 30, pose_id: left_foot_back_on_floor_namaste.id)

  playlist.playlist_poses.find_or_create_by(sequence_number: 31, pose_id: tree.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 32, pose_id: dive_down_to_standing_fwd_bend.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 33, pose_id: raise_up_to_flat_back.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 34, pose_id: back_down_to_standing_fwd_bend.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 35, pose_id: jump_back_to_plank.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 36, pose_id: slowly_lower_to_chaturanga.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 37, pose_id: down_to_floor_up_to_cobra.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 38, pose_id: push_back_downward_dog_left_leg.id) # left
  playlist.playlist_poses.find_or_create_by(sequence_number: 39, pose_id: swing_left_leg_runners_pose.id) # left
  playlist.playlist_poses.find_or_create_by(sequence_number: 40, pose_id: arms_above_head_for_crescent_pose.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 41, pose_id: swing_arm_back_warrior_2.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 42, pose_id: lean_back_into_reverse_warrior.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 43, pose_id: straighten_for_standing_reverse_warrior.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 44, pose_id: triangle_pose_right_arm_up.id) # right
  playlist.playlist_poses.find_or_create_by(sequence_number: 45, pose_id: reverse_warrior.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 46, pose_id: warrior2.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 47, pose_id: warrior1.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 48, pose_id: runners_pose.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 49, pose_id: collapse_into_pigeon.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 50, pose_id: swing_left_leg_up_to_one_leg_downward_dog.id) # left
  playlist.playlist_poses.find_or_create_by(sequence_number: 51, pose_id: leg_up_into_one_legged_chaturanga.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 52, pose_id: push_up_to_upward_dog.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 53, pose_id: side_plank_left_hand_down.id) # left
  playlist.playlist_poses.find_or_create_by(sequence_number: 54, pose_id: down_to_downward_dog.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 55, pose_id: jump_up_to_standing_fwd_bend.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 56, pose_id: half_moon_pose_standing_on_left.id) # left
  playlist.playlist_poses.find_or_create_by(sequence_number: 57, pose_id: come_back_down_to_standing_fwd_bend.id)
  playlist.playlist_poses.find_or_create_by(sequence_number: 58, pose_id: one_leg_tree_on_left.id) # left
  playlist.playlist_poses.find_or_create_by(sequence_number: 59, pose_id: right_foot_back_on_floor_namaste.id) # right
