# YogaPlaylist

[![Maintainability](https://api.codeclimate.com/v1/badges/7da95ba014377f246fe7/maintainability)](https://codeclimate.com/github/lortza/yogaplaylist/maintainability)

YogaPlayList is a Rails side project practice app that lets the user build yoga pose audio playlists with a variable pose hold time between poses. Building this app was a milestone for me as a new developer. After spending a while studying yoga, I wanted to build an audio playlist that I could play to give me verbal prompts for each pose. Before I had any training in programming, I solved this problem by recording a bunch of prompts and splicing all of them together into a single audio track -- manually placing each clip 30 seconds apart. When I wanted a version I could do in less time, I copied that file and manually removed 20 seconds per prompt so that I could have a 10-second-hold version. Clearly, this approach didn't scale, so once I had some ruby and javascript under my belt, I eventually came back to this problem and solved it with a Rails app.

## See it Live
~Live on Heroku at [https://yogaplaylist.herokuapp.com/](https://yogaplaylist.herokuapp.com)~

## The Stack
* Ruby
* Rails
* Postgres
* vanilla JS
* Sound files from my own voice recordings as well as bowl chimes from [freesound.org](https://freesound.org/people/margo_heston/packs/12534/)


## Getting Started
* Fork & Clone
* Bundle
* `rake db:setup`
* `rake db:seed`
* run RuboCop: `rubocop`
* run tests: `bundle exec rspec`
* run the app: `rails s`


### Linters
This project uses these linters in CI:
* [reek](https://github.com/troessner/reek)
* [rubocop](https://github.com/rubocop-hq/rubocop)
* [scss-lint](https://github.com/sds/scss-lint)

Run them locally on your machine like this:
```
bundle exec reek

bundle exec rubocop

bundle exec scss-lint app/assets/stylesheets/**.scss
```

## Tour of the App
This app has a simple, single purpose: to play a list of individual yoga audio tracks in evenly set intervals. For example:
```
play track for pose 1
hold for 20 seconds
play track for pose 2
hold for 20 seconds
play track for pose 3
hold for 20 seconds
play ending chime
```

As this is an app I built simply as a utility for myself, I focused on function over fancy. This is what a playlist looks like.

![alt text](/public/screenshots/playlist_show.png "playlist show page")

A playlist has a name, a hold time, and `has_many :playlist_poses`, which is the join table for a many-to-many relationship. A pose can be on many playlists and a playlist has many poses.

A pose has a name, image, and audio file. Here is the list of poses:

![alt text](/public/screenshots/poses_index.png "playlist show page")

I love the flexibility I have in this app. First, there is flexibility in creating a playlist without needing to re-record audio tracks. I can simply reuse them at any position in a playlist. For example, if I _really wanted_ to go back and forth between warrior 1 and warrior 2 five times in a row, I can do that.

![alt text](/public/screenshots/so_many_warriors.png "playlist with repeated poses")

Second, there is flexibility in the amount of time I want to spend any given day doing a yoga playlist. Some days, I may have a full 30 minutes, so I'll use a hold time of 30 seconds between each pose on my "flexibility playlist". Other days (much like this past week when I had a mean cold), I may choose to do an 10 second hold. I could still get through all of the poses and I still did something good for my body that day -- whereas if I had been locked in to a 30-second hold, that would not have happened.

### Show me the Magic
Is the magic of the hold time in a Ruby `sleep(30)`? Lol. My backend-oriented heart wishes. No, it is in a javascript `forEach` loop with a `setTimeout`. And it looks like this:

```
console.log('Begin!');
audioTracks.forEach(function(item, index, array) {
  setTimeout( (function( index ) {
    return function() {
      console.log(`playing: ${item}`);
      const track = new Audio(`/audio_files/${item}`);
      track.play().catch(e => { console.log(e); });
    };
  }(index)), (holdTime * index) );
});
```
_[see the code](https://github.com/lortza/yogaplaylist/blob/master/app/views/playlists/show.html.erb#L52-L60)_

While building this loop, I chose to output all of the tracks to the console as a sanity check. Then I decided to leave them in place in production... as a sanity check ;) Also shout out to [@tomrich82](https://github.com/tomrich82) for being a voice of reason as I struggled in this async world.

![alt text](/public/screenshots/playlist_show_console.png "playlist running with console output")

And this is what it looks like in the GUI when running through the poses:
![alt text](/public/screenshots/row_highlighting.gif "playlist running in GUI")

While I can't say I use this app very much any more -- I fell off that yoga horse :laughing: -- it was very satisfying to solve my initial problem in such a scalable way.
