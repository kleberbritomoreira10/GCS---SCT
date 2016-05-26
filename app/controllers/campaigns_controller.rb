class CampaignsController < ApplicationController

	def new
		@campaign = Campaign.new
	end

	def create
		@campaign = Campaign.new(campaign_params)
		if @campaign.save
			redirect_to campanhas_path, notice: "Criado com sucesso!"
		end
	end

	def show
    	@campaign = Campaign.find(params[:id])
	end

	def index
      @user = current_user
  		@campaigns = Campaign.all
	end

	def destroy
    	@campaign = Campaign.find(params[:id]).destroy
    	redirect_to campanhas_path, notice: "Campanha deletada."
	end

	def edit
    @campaign = Campaign.find params[:id]

      redirect_to "/campaigns" unless @campaign
    end

  def update
    @campaign = Campaign.find params[:id]

    if @campaign.update_attributes(campaign_params)
      redirect_to campaigns_path, :notice => "Campanha foi atualizada"
    else
      render "edit"
    end
  end

  private
  def campaign_params
    params.require(:campaign).permit(:name, :url, :description, :avatar)
  end
end


