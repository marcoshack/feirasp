namespace :feiras do
  desc 'Importa o XML de Feiras de doc/feiras.xml'
  task :import_xml => :environment do
    xml_doc = open(Rails.root.join('doc', 'feiras.xml'))
    xml = Hash.from_xml(xml_doc)
    
    @counter = 0
    xml['feirasLivres']['feira'].each do |e|
      $stdout.write("importando feira #{e['numero']}\n")
      FeiraTranslator.translate(e)
      @counter += 1
    end
    $stdout.write("\ntotal de feiras importadas: #{@counter}\n")
  end
end
