class TodozsController < ApplicationController
  before_action :set_todoz, only: %i[ show edit update destroy ]

  # GET /todozs or /todozs.json
  def index
    @todozs = Todoz.all
  end

  # GET /todozs/1 or /todozs/1.json
  def show
  end

  # GET /todozs/new
  def new
    @todoz = Todoz.new
  end

  # GET /todozs/1/edit
  def edit
  end

  # POST /todozs or /todozs.json
  def create
    @todoz = Todoz.new(todoz_params)

    respond_to do |format|
      if @todoz.save
        format.html { redirect_to todoz_url(@todoz), notice: "Todoz was successfully created." }
        format.json { render :show, status: :created, location: @todoz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @todoz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todozs/1 or /todozs/1.json
  def update
    respond_to do |format|
      if @todoz.update(todoz_params)
        format.html { redirect_to todoz_url(@todoz), notice: "Todoz was successfully updated." }
        format.json { render :show, status: :ok, location: @todoz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @todoz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todozs/1 or /todozs/1.json
  def destroy
    @todoz.destroy!

    respond_to do |format|
      format.html { redirect_to todozs_url, notice: "Todoz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todoz
      @todoz = Todoz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todoz_params
      params.require(:todoz).permit(:name, :task)
    end
end
