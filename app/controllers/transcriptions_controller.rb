class TranscriptionsController < ApplicationController
  protect_from_forgery with: :exception
  before_action :set_transcription, only: [:show, :edit, :update, :destroy]
  before_filter :allow_iframe_requests, only: [:create]
  # GET /transcriptions
  # GET /transcriptions.json
  def index
    @transcriptions = Transcription.all
  end

  # GET /transcriptions/1
  # GET /transcriptions/1.json
  def show
  end

  def finish
  end

  # GET /transcriptions/new
  def new

    @audioid=params[:id]
    
    if @audioid == 'p2bg'
      if cookies[:audioid]
        @audioid = cookies[:audioid]
      else
        if Random.rand()>0.5
          @audioid = 'p1b2'
        else
          @audioid = 'p1g2'
        end
        cookies[:audioid] = @audioid
      end  
    end
    @assignment_id = params['assignmentId']
    @hit_id = params['hitId']
    @worker_id = params['workerId']
    @review = params['review']
  
    @transcription = Transcription.new
  end

  # GET /transcriptions/1/edit
  def edit
  end

  # POST /transcriptions
  # POST /transcriptions.json
  def create
    @transcription = Transcription.new(transcription_params)
    respond_to do |format|
      if @transcription.save
        format.html { redirect_to '/complete', notice: @transcription }
        format.json { render :finish, status: :created, location: @transcription }
      else
        format.html { render :new }
        format.json { render json: @transcription.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /transcriptions/1
  # PATCH/PUT /transcriptions/1.json
  def update
    respond_to do |format|
      if @transcription.update(transcription_params)
        format.html { redirect_to @transcription, notice: 'Transcription was successfully updated.' }
        format.json { render :show, status: :ok, location: @transcription }
      else
        format.html { render :edit }
        format.json { render json: @transcription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transcriptions/1
  # DELETE /transcriptions/1.json
  def destroy
    @transcription.destroy
    respond_to do |format|
      format.html { redirect_to transcriptions_url, notice: 'Transcription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transcription
      @transcription = Transcription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transcription_params
      #params.require(:transcription).permit(:data, :user_id, :keystroke, :keytime)
    end
    def allow_iframe_requests
      response.headers.delete('X-Frame-Options')
    end 
end
