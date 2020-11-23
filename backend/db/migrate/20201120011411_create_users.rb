# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0] # rubocop:todo Style/Documentation
  def change
    create_table :users do |t|
      t.string :document
      t.string :name
      t.string :address
      t.string :reason
      t.string :email
      t.string :starts_at
      t.string :ends_at
      t.timestamps
    end
  end
end
<%= @user.address %>