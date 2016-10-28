namespace :test do
  task :prepare do
    ENV['FROM'] = 'paly-alumni'
    ENV['TO']   = 'paly-alumni'

    Comfy::Cms::Site.create!(:identifier => 'paly-alumni', :hostname => 'localhost')

    Rake::Task['comfortable_mexican_sofa:fixtures:import'].invoke
  end
end
