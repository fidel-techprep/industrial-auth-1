class LikePolicy < ApplicationPolicy
  attr_reader :current_user, :like

  def initialize(current_user, like)
    @current_user = current_user
    @like = like
  end

  def destroy?
    like.fan == current_user
  end

    
