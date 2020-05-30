class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts, id: :uuid, comment: '記事' do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
