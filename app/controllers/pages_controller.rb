class PagesController < ApplicationController
  def home
    @produits = Produit.all
  end

end
