require_relative './node'
require "pry"

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    if head.nil? || tail.nil? || head.next_node.nil?
      return
    end
   new_tail = @head
   new_head = @tail
   @head = new_head
   @tail = new_tail
   node = @tail

   loop do
    reverse_node(node)
    node = node.prev_node
    break if !node.next_node
   end

   reverse_node(node)
  end

  def reverse_node(node)

    prev = node.next_node ? node.next_node : nil
    nex = node.prev_node ? node.prev_node : nil

    node.prev_node = prev
    node.next_node = nex
  end
end
