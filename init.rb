unless File.exists?( File.join(Rails.root, 'public', 'gui') )
  raise "cant not find gui public assets, pls read the gui plugin README.rdoc to learn how to add symlink manually"
end
