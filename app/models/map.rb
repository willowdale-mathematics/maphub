require 'dijkstra_graph'

class Map < ApplicationRecord

  def graph
    if @graph.nil?
     @graph = DijkstraGraph::Graph.new
      paths["buildings"].each do |p, building|
        building.each do |k, edge|
          @graph.add_edge(p, k, edge)
        end
      end
    end
    @graph
  end

  def shortest_path(source, destination)
    graph.shortest_path(source, destination)
  end

  def distance(source, destination)
    graph.shortest_distances(source)[destination]
  end
end
