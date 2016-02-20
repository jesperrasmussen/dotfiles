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
#

$basePath = "/media/9090fb49-e217-45f6-9bdb-eee21f740969"
$moviePath = "/media/506721bd-4f78-463e-9574-ba9f7c2ced07"
$tvPath = "/media/395bded6-2bbc-4974-a69b-cb6d9dfd8565"

Maid.rules do
  # **NOTE:** It's recommended you just use this as a template; if you run these rules on your machine without knowing
  # what they do, you might run into unwanted results!

  rule 'Movies' do
    dir("#$basePath/complete/Movies/*").each do |path|
      if 15.minutes.since?(modified_at(path)) and !path.include? "_UNPACK_"
        move(path, "#$moviePath/Media/Movies/Uncategorized/")
      end
    end
  end

  rule 'TV Shows' do
    files("#$basePath/complete/TV/**/*/*").each do |path|

      $filePath = path.sub("#$basePath/complete/TV/", "")
      $finalPath = File.dirname($filePath)

      if 15.minutes.since?(modified_at(path)) and !path.include? "_UNPACK_"
        move(path, mkdir("#$tvPath/TV/#$finalPath"))
      end
    end
  end
end
