class GraphNode
    attr_accessor :value, :neighbors
    def initialize(value)
        @value = value
        @neighbors = []
    end

end


def bfs(starting_node, target_value)
    return starting_node if starting_node.value == target_value
    starting_node.neighbors.each do |node|
        result = bfs(node, target_value)
        return result unless result.nil?
    end
    nil
end