Rake::Task['default'].prerequisites.clear
Rake::Task['default'].clear

task default: [:spec, :cucumber, :'cucumber:wip']