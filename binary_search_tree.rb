require 'pry'

class BST
    attr_accessor :data, :left, :right
    def initialize(data)
        @data=data
    end
    def insert(val)
        if self.data >= val
            if self.left
                self.left.insert(val)
            else
                self.left = BST.new(val)
            end
        else
            if self.right
                self.right.insert(val)
            else
                self.right = BST.new(val)
            end
        end
    end
    def each(&proc)
        if self.left
            self.left.each(&proc)
        end
        yield(self.data)
        if self.right
            self.right.each(&proc)
        end
    end
end