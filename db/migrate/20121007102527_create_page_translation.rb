class CreatePageTranslation < ActiveRecord::Migration
  def up

    Spree::Page.create_translation_table!({
      title: :string,
      body: :text
    }, {
      migrate_data: true
    })
  end

  def down
    Spree::Page.drop_translation_table! migrate_data: true
  end
end
