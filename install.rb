puts "GUI install script is adding a symlink to gui/public/gui inside your application's public directory"
`cd public;ln -s ../vendor/plugins/gui/public/gui gui`
