class CreateProductPropertyTranslation < ActiveRecord::Migration
  def up
    Spree::ProductProperty.create_translation_table!({
      value: :string
    }, {
      migrate_data: true
    })
  end

  def down
    Spree::ProductProperty.drop_translation_table! migrate_data: true
  end
end
