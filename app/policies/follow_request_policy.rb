class FollowRequestPolicy < ApplicationPolicy

  attr_reader :current_user, :follow_request

  def initialize(current_user, follow_request)
    @current_user = current_user
    @follow_request = follow_request
  end

  def create?
    follow_request.sender == current_user && follow_request.recipient != current_user
  end

  def update?
    follow_request.recipient == current_user 
  end

  def destroy?
    follow_request.sender == current_user
  end


end
