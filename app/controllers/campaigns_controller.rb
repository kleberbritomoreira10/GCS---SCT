class CampaignsController < ApplicationController

	def new
		@campaign = kleberCampaign.new
	end

	def create
		@campaign = kleberCampaign.new(campaign_params)
		if @campaign.save
			redirect_to campanhas_path, notice: "Criado com sucesso!"
		end
	end

	def show
    	@campaign = kleberCampaign.find(params[:id])
	end

	def index
      @user = current_user
  		@campaigns = kleberCampaign.all
	end

	def destroy
    	@campaign = kleberCampaign.find(params[:id]).destroy
    	redirect_to campanhas_path, notice: "Campanha deletada."
	end

	def edit
    @campaign = kleberCampaign.find params[:id]

      redirect_to "/campaigns" unless @campaign
    end

  def update
    @campaign = kleberCampaign.find params[:id]

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


