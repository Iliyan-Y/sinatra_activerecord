class DiaryTestDb < ActiveRecord::Migration[6.0]
  def change
    execute <<-SQL
      CREATE TABLE notes(id SERIAL PRIMARY KEY);
      ALTER TABLE notes
      ADD COLUMN text VARCHAR;
    SQL
  end
end
