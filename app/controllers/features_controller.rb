class FeaturesController < ApplicationController
  before_action :set_developer
  before_action :set_feature, only: [:show, :edit, :update, :destroy]

  # GET developers/1/features
  def index
    @features = @developer.features
  end

  # GET developers/1/features/1
  def show
  end

  # GET developers/1/features/new
  def new
    @feature = @developer.features.build
  end

  # GET developers/1/features/1/edit
  def edit
  end

  # POST developers/1/features
  def create
    @feature = @developer.features.build(feature_params)

    if @feature.save
      redirect_to([@feature.developer, @feature], notice: 'Feature was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT developers/1/features/1
  def update
    if @feature.update_attributes(feature_params)
      redirect_to([@feature.developer, @feature], notice: 'Feature was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE developers/1/features/1
  def destroy
    @feature.destroy

    redirect_to developer_features_url(@developer)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_developer
      @developer = Developer.find(params[:developer_id])
    end

    def set_feature
      @feature = @developer.features.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def feature_params
      params.require(:feature).permit(:name)
    end
end
