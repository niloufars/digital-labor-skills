class TrackersController < ApplicationController
  def new 
  	@tracker = Tracker.new
  end
  def index
    @trackers = Tracker.all
  end

  def create
  	@tracker = Tracker.new
  	@tracker.workerID = params['workerID']
    @tracker.audioID = params['audioID']
    @tracker.assignmentID = params['assignmentID']
    @tracker.timeAt = params['timeAt']
    @tracker.keyCount = params['keyCount']

  	respond_to do |format|
      if @tracker.save
        format.json { render json: @tracker, status: :ok }
      else
        format.json { render json: @tracker.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
