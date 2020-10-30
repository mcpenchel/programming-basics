class Task

  attr_accessor :id, :title, :description, :done

  def initialize(attributes = {})
    @id = attributes[:id]
    @title = attributes[:title]
    @description = attributes[:description]
    @done = attributes[:done]
  end

  def self.find(id)
    task_hash = DB.execute("SELECT * FROM tasks WHERE id = ?", id).first
    return nil if task_hash.nil?
    task_hash.transform_keys!(&:to_sym)
    Task.new(task_hash)
  end

  def save
    # 0 -> false
    # 1 -> true
    old_school_boolean_value = @done ? 1 : 0


    if @id.nil?
      # we create
      query = "INSERT INTO tasks (title, description, done) VALUES (?, ?, ?)"
      DB.execute(query, @title, @description, old_school_boolean_value)
      @id = DB.last_insert_row_id
    else
      # we update
      query = "UPDATE tasks SET title = ?, description = ?, done = ? WHERE id = ?"
      DB.execute(query, @title, @description, old_school_boolean_value, @id)
    end
  end

  def self.all
    tasks = DB.execute("SELECT * FROM tasks")
    tasks.map do |task_hash|
      task_hash.transform_keys!(&:to_sym)
      Task.new(task_hash)
    end
  end

  def destroy
    DB.execute("DELETE FROM tasks WHERE id = ?", id)
  end

end
