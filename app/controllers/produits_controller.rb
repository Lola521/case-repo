class ProduitsController < ApplicationController
  def index
    @produits = Produit.where(user_id: current_user)
    @marques = Marque.all
  end


  def new
    @produit = Produit.new
  end

  def create
    @produit = Produit.new(produit_params)
    @produit.user = current_user
    if @produit.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def produit_params
    params.require(:produit).permit(:titre, :prix, :stock, :marque_id)
  end

end
