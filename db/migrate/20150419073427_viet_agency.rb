class VietAgency < ActiveRecord::Migration
  def change
  	create_table :donnees do |t|
  		t.string :nom
  		t.string :prenom
  		t.string :adresse
  		t.string :pays
  		t.timestamps
  	end
  end
end
