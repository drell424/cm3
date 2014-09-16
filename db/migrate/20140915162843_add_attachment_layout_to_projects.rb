class AddAttachmentLayoutToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :layout
    end
  end

  def self.down
    remove_attachment :projects, :layout
  end
end
