class SiteVisitorsController < ApplicationController
  before_action :set_site_visitor, only: [:show, :edit, :update, :destroy]

  # GET /site_visitors
  # GET /site_visitors.json
  def index
    @site_visitors = SiteVisitor.all
  end

  # GET /site_visitors/1
  # GET /site_visitors/1.json
  def show
  end

  # GET /site_visitors/new
  def new
    @site_visitor = SiteVisitor.new
  end

  # GET /site_visitors/1/edit
  def edit
  end

  # POST /site_visitors
  # POST /site_visitors.json
  def create
    @site_visitor = SiteVisitor.new(site_visitor_params)

    respond_to do |format|
      if @site_visitor.save
        format.html { redirect_to @site_visitor, notice: 'Site visitor was successfully created.' }
        format.json { render :show, status: :created, location: @site_visitor }
      else
        format.html { render :new }
        format.json { render json: @site_visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site_visitors/1
  # PATCH/PUT /site_visitors/1.json
  def update
    respond_to do |format|
      if @site_visitor.update(site_visitor_params)
        format.html { redirect_to @site_visitor, notice: 'Site visitor was successfully updated.' }
        format.json { render :show, status: :ok, location: @site_visitor }
      else
        format.html { render :edit }
        format.json { render json: @site_visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_visitors/1
  # DELETE /site_visitors/1.json
  def destroy
    @site_visitor.destroy
    respond_to do |format|
      format.html { redirect_to site_visitors_url, notice: 'Site visitor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_visitor
      @site_visitor = SiteVisitor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_visitor_params
      params.require(:site_visitor).permit(:name, :phonenumber)
    end
end
