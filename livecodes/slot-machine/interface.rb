require_relative 'slot_machine'

machine = SlotMachine.new([])

machine.play
puts machine.reels
puts '--------------'
puts machine.score
