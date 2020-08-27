class AddTimestamp < ActiveRecord::Migration[6.0]
  def change
    execute <<-SQL
      ALTER TABLE notes ADD COLUMN created_at TIMESTAMP;
      ALTER TABLE notes ALTER COLUMN created_at SET DEFAULT now();
    SQL
  end
end
