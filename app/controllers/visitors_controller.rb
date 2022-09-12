# frozen_string_literal: true

class VisitorsController < ApplicationCntroller
  before_action :set_visitor

  private

  def set_visitor
    @visitor = Visitor.find(params[:id])
  end
end