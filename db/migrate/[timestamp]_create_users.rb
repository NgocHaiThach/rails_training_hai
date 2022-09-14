class CreateUsers < ActiveRecord::Migration
    def change
        create_table : users do |t|
            t.string :name
            t.string : email


            t.timestamps null: fasle
        end
    end
end