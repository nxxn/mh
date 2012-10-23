class CreateProductTranslation < ActiveRecord::Migration
  def up
    Spree::Product.create_translation_table!({
      name: :string,
      meta_description: :string,
      description: :text
    }, {
      migrate_data: true
    })
  end

  def down
    Spree::Product.drop_translation_table! migrate_data: true
  end
end
