class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    @entry = Entry.new
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(date: DateTime.now, weight: entry_params[:weight])
    @entry.save

    redirect_to entries_path
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to entries_path
  end

  private

  def entry_params
    params.require(:entry).permit(:weight)
  end
end
