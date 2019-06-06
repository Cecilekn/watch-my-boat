class SubscriptionsController < ApplicationController
  def new
    # Dans la view : formulaire de paiement Stripe
    # Pointe vers le create
  end

  def create
    # Recevoir le paiement de Stripe : create customer & charge
    # Sélectionner le package de type abonnement
    # Créer 12 instances de bookings (visites mensuelles) entre le package et le bateau
    # Update le statut du customer (subscribed)
    # Créer un modèle charge dont on va créer une instance (historique du paiement)
  end
end
