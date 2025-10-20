class Api::V1::NodesController < ApplicationController
  def show
    node = Node.find_by(id: params[:id])
    if node
      render json: node, include: :children
    else
      render json: { error: "Node not found" }, status: :not_found
    end
  end
end
