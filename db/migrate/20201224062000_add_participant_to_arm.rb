class AddParticipantToArm < ActiveRecord::Migration[6.1]
  def change
    add_refernce :participants, :arm
  end
end
