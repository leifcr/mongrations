namespace :mongo do
  @path = File.join(Rails.root, "db", "mongrations")
  desc "Migrate the database through scripts in db/mongrations. Target specific version with VERSION=x."
  task :mongrate => :environment do
    Mongrations::Migrator.migrate(@path, ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
  end

  namespace :mongrate do
    desc  'Rollbacks the database one mongration and re migrate up. If you want to rollback more than one step, define STEP=x. Target specific version with VERSION=x.'
    task :redo => :environment do
      if ENV["VERSION"]
        Rake::Task["mongo:mongrate:down"].invoke
        Rake::Task["mongo:mongrate:up"].invoke
      else
        Rake::Task["mongo:mongo_rollback"].invoke
        Rake::Task["mongo:mongrate"].invoke
      end
    end

    desc 'Runs the "up" for a given mongration VERSION.'
    task :up => :environment do
      version = ENV["VERSION"] ? ENV["VERSION"].to_i : nil
      raise "VERSION is required" unless version
      Mongrations::Migrator.run(:up, @path, version)
    end

    desc 'Runs the "down" for a given mongration VERSION.'
    task :down => :environment do
      version = ENV["VERSION"] ? ENV["VERSION"].to_i : nil
      raise "VERSION is required" unless version
      Mongrations::Migrator.run(:down, @path, version)
    end
  end

  desc 'Rolls the schema back to the previous version. Specify the number of steps with STEP=n'
  task :mongo_rollback => :environment do
    step = ENV['STEP'] ? ENV['STEP'].to_i : 1
    Mongrations::Migrator.rollback(@path, step)
  end
end
