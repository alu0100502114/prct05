# require "bundler/gem_tasks"
task :default => :tu

desc "Pruebas unitarias de la clase Fraction"
task :tu do
  sh "ruby -I. test/tc_fraccion.rb"
end

desc "Ejecutar sólo la prueba add"
task :add do
  sh "ruby -I. test/tc_fraccion.rb -n /add/"
end
