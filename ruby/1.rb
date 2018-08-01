# Implement a group_by_owners function that:
#   1. Accepts a hash containing the file owner name for each file
#   2. Returns a hash containing an array of names for each owner name, in any order.
# 
# Example:
#  for hash { 'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'} the group_by_owners function should return
#  { 'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py'] }
#
module FileOwners
  def self.group_by_owners(files)
    new_files = {}
    files.each do |key, val|
      if new_files.key?(val)
        new_files[val].push(key)
      else
        new_files[val] = [key]
      end
    end
    new_files
  end
end

files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}

puts FileOwners.group_by_owners(files)
