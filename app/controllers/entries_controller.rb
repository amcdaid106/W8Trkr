class EntriesController < ApplicationController
  def index
    @entries = Entry.where(user: current_user)

    @graph_data = @entries.map do |entry|
      {
        date: entry.created_at,
        weight: entry.weight
      }
    end
    @entry = Entry.new
    @user = current_user
  end

  def new
    @entry = Entry.new
  end

  def create
    @weight = entry_params[:weight].to_f.round(1)
    @entry = Entry.new(weight: @weight, user: current_user)

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
