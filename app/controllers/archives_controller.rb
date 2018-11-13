class ArchivesController < ApplicationController
    before_action :set_archive, only: [:show, :edit, :update, :destroy]
    before_action :isAdmin, only: [:index, :show, :new, :edit, :create, :update, :destroy]

    # GET /archives
    # GET /archives.json
    def index
        @archives = Archive.all
    end

    # GET /archives/1
    # GET /archives/1.json
    def show
    end

    # GET /archives/new
    def new
        @archive = Archive.new
    end

    # GET /archives/1/edit
    def edit
    end

    # POST /archives
    # POST /archives.json
    def create
        @archive = Archive.new(archive_params)
        uploaded_file(params[:archive][:attachment])

        respond_to do |format|
            if @archive.save
                format.html { redirect_to @archive, notice: 'Archive was successfully created.' }
                format.json { render :show, status: :created, location: @archive }
            else
                format.html { render :new }
                format.json { render json: @archive.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /archives/1
    # PATCH/PUT /archives/1.json
    def update
        respond_to do |format|
            if @archive.update(archive_params)
                format.html { redirect_to @archive, notice: 'Archive was successfully updated.' }
                format.json { render :show, status: :ok, location: @archive }
            else
                format.html { render :edit }
                format.json { render json: @archive.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /archives/1
    # DELETE /archives/1.json
    def destroy
        @archive.destroy
        respond_to do |format|
            format.html { redirect_to archives_url, notice: 'Archive was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    def download
        item = Archive.find(params[:id])
    
        send_data item.data, filename: item.filename, type: item.content_type, disposition: 'attachment'
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_archive
            @archive = Archive.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def archive_params
            params.require(:archive).permit(:description, :subjects_id, :tipo)
        end

        def uploaded_file(incoming_file)
            @archive.filename = incoming_file.original_filename
            @archive.content_type = incoming_file.content_type
            @archive.data = incoming_file.read
        end
  
        def filename(new_filename)
            write_attribute("filename", sanitize_filename(new_filename))
        end
end