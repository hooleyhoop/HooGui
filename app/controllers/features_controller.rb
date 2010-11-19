class FeaturesController < ApplicationController
  unloadable

  layout "courgette"

  def index
    @feature = Courgette.first
    render "source"
  end

  def treeview
    @folder_path = params[:dir]

    @directories = Courgette.feature_folders(@folder_path)
    @files = Courgette.feature_filenames(@folder_path)
    render :layout => false
  end

  def source
    @feature = Courgette.find(params[:path])
    render "source", :layout => false
    end

  def view
    @feature = Courgette.find(params[:path])
    render "source"
  end

end