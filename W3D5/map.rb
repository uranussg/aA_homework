class Map
    def initialize
        @map = []
    end

    def keys
        @map.map { |el| el[0] }
    end

    def values
        @map.map { |el| el[1] }
    end


    def set(key, value)
        @map.each do |el|
            if el[0] == key
                el[1] = value 
                return true
            end
        end
        @map << [key, value]
        return true

    end

    def get(key)
        @map.each do |el|
            return el[1] if el[0] == key
        end
        return nil
    end

    def delete(key)
        @map.each do |el|
            el[1] = nil if el[0] == key
            break
        end
    end

    def show
        @map.select { |el| el[1] }
    end
end