# Sample Maid rules file -- some ideas to get you started.
#
# To use, remove ".sample" from the filename, and modify as desired.  Test using:
#
#     maid clean -n
#
# **NOTE:** It's recommended you just use this as a template; if you run these rules on your machine without knowing
# what they do, you might run into unwanted results!
#
# Don't forget, it's just Ruby!  You can define custom methods and use them below:
# 
#     def magic(*)
#       # ...
#     end
# 
# If you come up with some cool tools of your own, please send me a pull request on GitHub!  Also, please consider sharing your rules with others via [the wiki](https://github.com/benjaminoakes/maid/wiki).
#
# For more help on Maid:
#
# * Run `maid help`
# * Read the README, tutorial, and documentation at https://github.com/benjaminoakes/maid#maid
# * Ask me a question over email (hello@benjaminoakes.com) or Twitter (@benjaminoakes)
# * Check out how others are using Maid in [the Maid wiki](https://github.com/benjaminoakes/maid/wiki)

Maid.rules do
  # **NOTE:** It's recommended you just use this as a template; if you run these rules on your machine without knowing
  # what they do, you might run into unwanted results!

  #TODO
  # Set up basedir
  @photos_basedir = '~/Photography'
  @photos_states = ['1. Develop', '2. Process', '3. Import', '4. Archive', '5. Backup', '6. Deliver']

  #def transition_next(path)
  #end

  def get_path_state(state)
    "#{@photos_basedir}/#{@photos_states[state]}/"
  end

  def get_relative_path(album_path)
    album_name = File.basename(album_path)

    [get_year(album_path), album_name].join('/')
  end

  def get_year(album_path)
    File.basename(File.dirname(album_path))
  end

  rule 'Done developing' do
    dir('~/Photography/1.Develop/*/*/').each do |album_path|
      
      #It's marked as delivery project - for 3rd party
      if contains_tag?(album_path, 'Blue')

        #Copy contents of Output to Delivery folder - and name it something related to current project.
        copy(dir("#{album_path}/Output/*.jpg"), mkdir(get_path_state(5) + get_relative_path(album_path)))

        #remove_tag(album_path, 'Blue')
        add_tag(album_path, 'Green')
      end
      if contains_tag?(album_path, 'Green')
        puts "green!"
        #remove_tag(path, 'Green')
        move(album_path, mkdir(get_path_state(1) + get_year(album_path) + "/"))
      end
    end
  end

  rule 'Done postprocessing' do
    dir('~/Photography/2. Process/*/*/').each do |album_path|
      #Wipe Capture One directory from Output. Originals should be enough.
      trash("#{album_path}/Output/CaptureOne")

      #Remove JPG's from Capture - this is probably something done elsewhere
      dir("#{album_path}/Capture/*.jpg").each do |jpegpath|
        trash(jpegpath)
      end

      #Remove everything in Trash dir.
      dir("#{album_path}/Trash/*").each do |path|
        trash(path)
      end

      move(album_path, mkdir(get_path_state(2) + get_year(album_path) + "/"))
    end
  end

  rule 'Import photos' do
    dir('~/Photography/3. Import/*').each do |path|

      #Import Output into Photos

      #Move folder to next state
      #move(path, "~/Photography/4. Archive/")
    end
  end

  rule 'Imported photos - move to archive' do
    dir('~/Photography/4. Archive/*').each do |path|
      #Is this moot for now?
      if contains_tag?(path, 'Green')
        remove_tag(path, 'Green')
        #move(path, "~/Photography/5. Backup/")
      end
    end

  end

  rule 'Moving photos to backup routines' do
    dir('~/Photography/5. Backup/*').each do |path|
      #TODO
      #Should trigger local backup - only if Media Volumes are available (NAS)
    end
  end

  # TODO 
  # Add rules for notifying on photos in Backup for a while. Set rules for when they ought to be deleted.
  # Add statemanagement. It should be possible to factor out seperately.
end
