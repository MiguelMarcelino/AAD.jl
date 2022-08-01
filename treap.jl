
# Treap Implemented using a binary search tree
# All heavily inspired by Algorithms and Data Structures

struct Node
    key::String # Maybe use Vector{UInt8} for efficiency
    priority::Int64
    parent::Union{Node, Nothing}
    right::Union{Node, Nothing}
    left::Union{Node, Nothing}

    Node(key::String, priority::Int64) = new(key, priority, nothing, nothing , nothing)
    Node(key::String, priority::Int64, 
        parent::Union{Node, Nothing}, right::Union{Node, Nothing},
        left::Union{Node, Nothing}) = new(key, priority, parent, right , left)
end

function set_left() 
    # TODO
end

function set_right() 
    # TODO
end

function left_rotate(treap::Node, x::Node)
    "Performs left rotation with pivoting on x"
    if x === nothing || is_root(x)
        # Checks if x is nothing or the root of the tree.
        # If so, just return
        return
    end
    y = x.parent
    if y.right != x
        return
    end
    p = t.parent
    if p !== nothing
        if p.left == y
            p.set_left(x)
        else
            p.set_right(x)
        end
    else
        treap = x
    y.set_right(x.left)
    x.set_left(y)
end

function right_rotate(x::Node)
    # TODO
end

function insert(treap::Node, key::String, priority::Int64)
    node = treap
    parent = nothing
    newNode = Node(key, priority)
    while node !== nothing
        parent = node
        if node.key <= key
            node = node.left
        else
            node = node.right
        end
    end
    if parent === nothing
        treap = newNode
        return
    elseif key <= parent.key
        parent.left = newNode
    else
        parent.right = newNode
    newNode.parent = parent
    while newNode.parent !== nothing &&
            newNode.priority < newNode.parent.priority
        if newNode == newNode.parent.left # TODO: Should it not be newNode.key comparison?
            # If this node is a left child, then we need to use rightRotate
            rightRotate(newNode)
        else
            # Otherwise, we will rotate newNode left
            leftRotate(newNode)
    end
end

function search()
    # TODO
end


function test_treap()
    # TODO: Build a treap and test the methods
end
