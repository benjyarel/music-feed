class CreateRssChannels < ActiveRecord::Migration[8.1]
  def change
    create_table :rss_channels do |t|
      t.string :title
      t.string :url
      t.string :lang

      t.timestamps
    end
  end
end
