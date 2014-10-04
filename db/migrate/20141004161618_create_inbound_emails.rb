class CreateInboundEmails < ActiveRecord::Migration
  def change
    create_table :inbound_emails do |t|
      t.string :to
      t.string :from
      t.text :text
      t.string :subject
      t.string :sender_ip

      t.timestamps
    end
  end
end
