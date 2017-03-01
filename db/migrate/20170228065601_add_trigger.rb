class AddTrigger < ActiveRecord::Migration
  def up
    execute "CREATE TRIGGER `update_total_price` AFTER INSERT on `details` FOR EACH ROW UPDATE `recipes` SET total_price = total_price + NEW.sub_total WHERE id = NEW.id"
  end

  def down
		execute "DROP TRIGGER IF EXISTS `update_total_price`"
  end
end
