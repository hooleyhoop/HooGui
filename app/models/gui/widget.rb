module Gui
  class Widget < ActiveRecord::Base
    set_table_name "gui_widgets"

    def make
      puts "widget made"
    end

  end
end
