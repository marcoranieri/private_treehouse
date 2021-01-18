class MigrateDescriptionToRichDescriptionIdeas < ActiveRecord::Migration[6.0]
  def up
    Idea.find_each do |idea|
      idea.update(rich_description: idea.description)
    end
  end

  def down
    Idea.find_each do |idea|
      idea.update(description: idea.rich_description)
      idea.update(rich_description: nil)
    end
  end
end