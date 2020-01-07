def kdfs
    visited = [[0, 0]]
    # (0...8).each do |x|
    #     (0...8).each do |y|
    until nextp(visited[-1]).all? { |pos| visited.include?(pos) }
        nextp(visited[-1]).each do |pos| 
            if !visited.include?(pos)
                visited << pos 
                break
            end
        end
    end
    p visited.length
end


def nextp(pos)
    x, y = pos
    arr =  [ x - 1, x + 1].product([y - 2, y + 2]) + [x - 2, x + 2].product([y - 1, y + 1])
    arr.select { |pos| pos.all? {|c| (0...8).include?(c) } }
end

kdfs
