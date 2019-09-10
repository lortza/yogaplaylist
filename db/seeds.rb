# frozen_string_literal: true

puts 'Destroy AllTheThings!'
PlaylistPose.destroy_all
Pose.destroy_all
Playlist.destroy_all

puts 'Create Number Poses'
one = Pose.create!(name: 'one', audio_file: '1.wav', image_file: '1.jpg')
two = Pose.create!(name: 'two', audio_file: '2.wav', image_file: '2.jpg')
three = Pose.create!(name: 'three', audio_file: '3.wav', image_file: '3.jpg')
four = Pose.create!(name: 'four', audio_file: '4.wav', image_file: '4.jpg')
five = Pose.create!(name: 'five', audio_file: '5.wav', image_file: '5.jpg')

puts 'Create Numbers Playlists'
playlist = Playlist.create!(name: 'one two one', hold_time: 3)
playlist.playlist_poses.create!([
  { sequence_number: 1, pose_id: one.id },
  { sequence_number: 2, pose_id: two.id },
  { sequence_number: 3, pose_id: one.id },
])

playlist = Playlist.create!(name: 'one two three four five', hold_time: 3)
playlist.playlist_poses.create!([
  { sequence_number: 1, pose_id: one.id },
  { sequence_number: 2, pose_id: two.id },
  { sequence_number: 3, pose_id: three.id },
  { sequence_number: 4, pose_id: four.id },
  { sequence_number: 5, pose_id: five.id },
])

puts 'Create Yoga Poses'
begin_at_head_of_yoga_mat = Pose.create!(name: 'begin_at_head_of_yoga_mat.m4a', audio_file: 'begin_at_head_of_yoga_mat.m4a', image_file: 'standing_straight.png')
tree = Pose.create!(name: 'tree.m4a', audio_file: 'tree.m4a', image_file: 'tree')
dive_down_to_standing_fwd_bend = Pose.create!(name: 'dive_down_to_standing_fwd_bend', audio_file: 'dive_down_to_standing_fwd_bend.m4a', image_file: 'standing_forward_bend.png')
raise_up_to_flat_back = Pose.create!(name: 'raise_up_to_flat_back.m4a', audio_file: 'raise_up_to_flat_back.m4a', image_file: 'flat_back.png')
back_down_to_standing_fwd_bend = Pose.create!(name: 'back_down_to_standing_fwd_bend', audio_file: 'back_down_to_standing_fwd_bend.m4a', image_file: 'standing_forward_bend.png')
jump_back_to_plank = Pose.create!(name: 'jump_back_to_plank.m4a', audio_file: 'jump_back_to_plank.m4a', image_file: 'plank.png')
slowly_lower_to_chaturanga = Pose.create!(name: 'slowly_lower_to_chaturanga', audio_file: 'slowly_lower_to_chaturanga.m4a', image_file: 'chaturanga.png')
down_to_floor_up_to_cobra = Pose.create!(name: 'down_to_floor_up_to_cobra', audio_file: 'down_to_floor_up_to_cobra.m4a', image_file: 'cobra.png')
push_back_downward_dog_right_leg = Pose.create!(name: 'push_back_downward_dog_right_leg', audio_file: 'push_back_downward_dog_right_leg.m4a', image_file: 'downward_dog_right_leg.png')
push_back_downward_dog_left_leg = Pose.create!(name: 'push_back_downward_dog_left_leg', audio_file: 'push_back_downward_dog_left_leg.m4a', image_file: 'downward_dog_left_leg.png')

swing_right_leg_runners_pose = Pose.create!(name: 'swing_right_leg_runners_pose', audio_file: 'swing_right_leg_runners_pose.m4a', image_file: 'runners_pose.png')
swing_left_leg_runners_pose = Pose.create!(name: 'swing_left_leg_runners_pose', audio_file: 'swing_left_leg_runners_pose.m4a', image_file: 'runners_pose.png')

arms_above_head_for_crescent_pose = Pose.create!(name: 'arms_above_head_for_crescent_pose', audio_file: 'arms_above_head_for_crescent_pose.m4a', image_file: 'crescent_pose.png')
swing_arm_back_warrior_2 = Pose.create!(name: 'swing_arm_back_warrior_2', audio_file: 'swing_arm_back_warrior_2.m4a', image_file: 'warrior2.png')
lean_back_into_reverse_warrior = Pose.create!(name: 'lean_back_into_reverse_warrior', audio_file: 'lean_back_into_reverse_warrior.m4a', image_file: 'reverse_warrior.png')
straighten_for_standing_reverse_warrior = Pose.create!(name: 'straighten_for_standing_reverse_warrior', audio_file: 'straighten_for_standing_reverse_warrior.m4a', image_file: 'standing_reverse_warrior.png')

triangle_pose_left_arm_up = Pose.create!(name: 'triangle_pose_left_arm_up', audio_file: 'triangle_pose_left_arm_up.m4a', image_file: 'triangle_pose_left_arm_up.png')
triangle_pose_right_arm_up = Pose.create!(name: 'triangle_pose_right_arm_up', audio_file: 'triangle_pose_right_arm_up.m4a', image_file: 'triangle_pose_right_arm_up.png')

reverse_warrior = Pose.create!(name: 'reverse_warrior', audio_file: 'reverse_warrior.m4a', image_file: 'reverse_warrior.png')
warrior2 = Pose.create!(name: 'warrior2', audio_file: 'warrior2.m4a', image_file: 'warrior2.png')
warrior1 = Pose.create!(name: 'warrior1', audio_file: 'warrior1.m4a', image_file: 'warrior1.png')
runners_pose = Pose.create!(name: 'runners_pose', audio_file: 'runners_pose.m4a', image_file: 'runners_pose.png')
collapse_into_pigeon = Pose.create!(name: 'collapse_into_pigeon', audio_file: 'collapse_into_pigeon.m4a', image_file: 'pigeon.png')

swing_right_leg_up_to_one_leg_downward_dog = Pose.create!(name: 'swing_right_leg_up_to_one_leg_downward_dog', audio_file: 'swing_right_leg_up_to_one_leg_downward_dog.m4a', image_file: 'downward_dog_right_leg.png')
swing_left_leg_up_to_one_leg_downward_dog = Pose.create!(name: 'swing_left_leg_up_to_one_leg_downward_dog', audio_file: 'swing_left_leg_up_to_one_leg_downward_dog.m4a', image_file: 'downward_dog_left_leg.png')

leg_up_into_one_legged_chaturanga = Pose.create!(name: 'leg_up_into_one_legged_chaturanga', audio_file: 'leg_up_into_one_legged_chaturanga.m4a', image_file: 'chaturanga.png')
push_up_to_upward_dog = Pose.create!(name: 'push_up_to_upward_dog', audio_file: 'push_up_to_upward_dog.m4a', image_file: 'upward_dog.png')

side_plank_right_hand_down = Pose.create!(name: 'side_plank_right_hand_down', audio_file: 'side_plank_right_hand_down.m4a', image_file: 'side_plank_right_hand_down.png')
side_plank_left_hand_down = Pose.create!(name: 'side_plank_left_hand_down', audio_file: 'side_plank_left_hand_down.m4a', image_file: 'side_plank_left_hand_down.png')

down_to_downward_dog = Pose.create!(name: 'down_to_downward_dog', audio_file: 'down_to_downward_dog.m4a', image_file: 'downward_dog.png')
jump_up_to_standing_fwd_bend = Pose.create!(name: 'jump_up_to_standing_fwd_bend', audio_file: 'jump_up_to_standing_fwd_bend.m4a', image_file: 'standing_forward_bend.png')

half_moon_pose_standing_on_right = Pose.create!(name: 'half_moon_pose_standing_on_right', audio_file: 'half_moon_pose_standing_on_right.m4a', image_file: 'half_moon_pose_standing_on_right.png')
half_moon_pose_standing_on_left = Pose.create!(name: 'half_moon_pose_standing_on_left', audio_file: 'half_moon_pose_standing_on_left.m4a', image_file: 'half_moon_pose_standing_on_left.png')

come_back_down_to_standing_fwd_bend = Pose.create!(name: 'come_back_down_to_standing_fwd_bend', audio_file: 'come_back_down_to_standing_fwd_bend.m4a', image_file: 'standing_forward_bend.png')

one_leg_tree_on_right = Pose.create!(name: 'one_leg_tree_on_right', audio_file: 'one_leg_tree_on_right.m4a', image_file: 'one_leg_tree_on_right.png')
one_leg_tree_on_left = Pose.create!(name: 'one_leg_tree_on_left', audio_file: 'one_leg_tree_on_left.m4a', image_file: 'one_leg_tree_on_left.png')

left_foot_back_on_floor_namaste = Pose.create!(name: 'left_foot_back_on_floor_namaste', audio_file: 'left_foot_back_on_floor_namaste.m4a', image_file: 'namaste.png')
right_foot_back_on_floor_namaste = Pose.create!(name: 'right_foot_back_on_floor_namaste', audio_file: 'right_foot_back_on_floor_namaste.m4a', image_file: 'namaste.png')



puts 'Create Yoga Playlist'
playlist = Playlist.create!(name: '5 second yoga playlist', hold_time: 5)
playlist.playlist_poses.create!([
  { sequence_number: 1, pose_id: begin_at_head_of_yoga_mat.id },
  { sequence_number: 2, pose_id: tree.id },
  { sequence_number: 3, pose_id: dive_down_to_standing_fwd_bend.id },
  { sequence_number: 4, pose_id: raise_up_to_flat_back.id },
  { sequence_number: 5, pose_id: back_down_to_standing_fwd_bend.id },
  { sequence_number: 6, pose_id: jump_back_to_plank.id },
  { sequence_number: 7, pose_id: slowly_lower_to_chaturanga.id },
  { sequence_number: 8, pose_id: down_to_floor_up_to_cobra.id },
  { sequence_number: 9, pose_id: push_back_downward_dog_right_leg.id },
  { sequence_number: 10, pose_id: swing_right_leg_runners_pose.id },
  { sequence_number: 11, pose_id: arms_above_head_for_crescent_pose.id },
  { sequence_number: 12, pose_id: swing_arm_back_warrior_2.id },
  { sequence_number: 13, pose_id: lean_back_into_reverse_warrior.id },
  { sequence_number: 14, pose_id: straighten_for_standing_reverse_warrior.id },
  { sequence_number: 15, pose_id: triangle_pose_left_arm_up.id },
  { sequence_number: 16, pose_id: reverse_warrior.id },
  { sequence_number: 17, pose_id: warrior2.id },
  { sequence_number: 18, pose_id: warrior1.id },
  { sequence_number: 19, pose_id: runners_pose.id },
  { sequence_number: 20, pose_id: collapse_into_pigeon.id },
  { sequence_number: 21, pose_id: swing_right_leg_up_to_one_leg_downward_dog.id },
  { sequence_number: 22, pose_id: leg_up_into_one_legged_chaturanga.id },
  { sequence_number: 23, pose_id: push_up_to_upward_dog.id },
  { sequence_number: 24, pose_id: side_plank_right_hand_down.id },
  { sequence_number: 25, pose_id: down_to_downward_dog.id },
  { sequence_number: 26, pose_id: jump_up_to_standing_fwd_bend.id },
  { sequence_number: 27, pose_id: half_moon_pose_standing_on_right.id },
  { sequence_number: 28, pose_id: come_back_down_to_standing_fwd_bend.id },
  { sequence_number: 29, pose_id: one_leg_tree_on_right.id },
  { sequence_number: 30, pose_id: left_foot_back_on_floor_namaste.id },

  { sequence_number: 31, pose_id: tree.id },
  { sequence_number: 32, pose_id: dive_down_to_standing_fwd_bend.id },
  { sequence_number: 33, pose_id: raise_up_to_flat_back.id },
  { sequence_number: 34, pose_id: back_down_to_standing_fwd_bend.id },
  { sequence_number: 35, pose_id: jump_back_to_plank.id },
  { sequence_number: 36, pose_id: slowly_lower_to_chaturanga.id },
  { sequence_number: 37, pose_id: down_to_floor_up_to_cobra.id },
  { sequence_number: 38, pose_id: push_back_downward_dog_left_leg.id },   #left
  { sequence_number: 39, pose_id: swing_left_leg_runners_pose.id },   #left
  { sequence_number: 40, pose_id: arms_above_head_for_crescent_pose.id },
  { sequence_number: 41, pose_id: swing_arm_back_warrior_2.id },
  { sequence_number: 42, pose_id: lean_back_into_reverse_warrior.id },
  { sequence_number: 43, pose_id: straighten_for_standing_reverse_warrior.id },
  { sequence_number: 44, pose_id: triangle_pose_right_arm_up.id },    #right
  { sequence_number: 45, pose_id: reverse_warrior.id },
  { sequence_number: 46, pose_id: warrior2.id },
  { sequence_number: 47, pose_id: warrior1.id },
  { sequence_number: 48, pose_id: runners_pose.id },
  { sequence_number: 49, pose_id: collapse_into_pigeon.id },
  { sequence_number: 50, pose_id: swing_left_leg_up_to_one_leg_downward_dog.id },   #left
  { sequence_number: 51, pose_id: leg_up_into_one_legged_chaturanga.id },
  { sequence_number: 52, pose_id: push_up_to_upward_dog.id },
  { sequence_number: 53, pose_id: side_plank_left_hand_down.id },   #left
  { sequence_number: 54, pose_id: down_to_downward_dog.id },
  { sequence_number: 55, pose_id: jump_up_to_standing_fwd_bend.id },
  { sequence_number: 56, pose_id: half_moon_pose_standing_on_left.id },   #left
  { sequence_number: 57, pose_id: come_back_down_to_standing_fwd_bend.id },
  { sequence_number: 58, pose_id: one_leg_tree_on_left.id },   #left
  { sequence_number: 59, pose_id: right_foot_back_on_floor_namaste.id },    #right
])
