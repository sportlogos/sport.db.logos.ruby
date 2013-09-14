# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sportdb-logos"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gerald Bauer"]
  s.date = "2013-09-14"
  s.description = "sportdb-logos gem - national team logos (24x24, 32x32, 48x48, 64x64) bundled for reuse w/ asset pipeline"
  s.email = "opensport@googlegroups.com"
  s.extra_rdoc_files = ["Manifest.txt"]
  s.files = ["History.md", "Manifest.txt", "README.md", "Rakefile", "lib/sportdb/logos.rb", "lib/sportdb/logos/engine.rb", "lib/sportdb/logos/version.rb", "vendor/assets/images/logos/24x24/alb.png", "vendor/assets/images/logos/24x24/and.png", "vendor/assets/images/logos/24x24/arm.png", "vendor/assets/images/logos/24x24/aut.png", "vendor/assets/images/logos/24x24/aze.png", "vendor/assets/images/logos/24x24/bel.png", "vendor/assets/images/logos/24x24/bih.png", "vendor/assets/images/logos/24x24/blr.png", "vendor/assets/images/logos/24x24/bul.png", "vendor/assets/images/logos/24x24/cro.png", "vendor/assets/images/logos/24x24/cyp.png", "vendor/assets/images/logos/24x24/cze.png", "vendor/assets/images/logos/24x24/den.png", "vendor/assets/images/logos/24x24/eng.png", "vendor/assets/images/logos/24x24/esp.png", "vendor/assets/images/logos/24x24/est.png", "vendor/assets/images/logos/24x24/fin.png", "vendor/assets/images/logos/24x24/fra.png", "vendor/assets/images/logos/24x24/fro.png", "vendor/assets/images/logos/24x24/geo.png", "vendor/assets/images/logos/24x24/ger.png", "vendor/assets/images/logos/24x24/gre.png", "vendor/assets/images/logos/24x24/hun.png", "vendor/assets/images/logos/24x24/irl.png", "vendor/assets/images/logos/24x24/isl.png", "vendor/assets/images/logos/24x24/isr.png", "vendor/assets/images/logos/24x24/ita.png", "vendor/assets/images/logos/24x24/kaz.png", "vendor/assets/images/logos/24x24/lie.png", "vendor/assets/images/logos/24x24/ltu.png", "vendor/assets/images/logos/24x24/lux.png", "vendor/assets/images/logos/24x24/lva.png", "vendor/assets/images/logos/24x24/mda.png", "vendor/assets/images/logos/24x24/mkd.png", "vendor/assets/images/logos/24x24/mlt.png", "vendor/assets/images/logos/24x24/mne.png", "vendor/assets/images/logos/24x24/ned.png", "vendor/assets/images/logos/24x24/nir.png", "vendor/assets/images/logos/24x24/nor.png", "vendor/assets/images/logos/24x24/pol.png", "vendor/assets/images/logos/24x24/por.png", "vendor/assets/images/logos/24x24/rou.png", "vendor/assets/images/logos/24x24/rus.png", "vendor/assets/images/logos/24x24/sco.png", "vendor/assets/images/logos/24x24/smr.png", "vendor/assets/images/logos/24x24/srb.png", "vendor/assets/images/logos/24x24/sui.png", "vendor/assets/images/logos/24x24/svk.png", "vendor/assets/images/logos/24x24/svn.png", "vendor/assets/images/logos/24x24/swe.png", "vendor/assets/images/logos/24x24/tur.png", "vendor/assets/images/logos/24x24/ukr.png", "vendor/assets/images/logos/24x24/wal.png", "vendor/assets/images/logos/32x32/alb.png", "vendor/assets/images/logos/32x32/and.png", "vendor/assets/images/logos/32x32/arm.png", "vendor/assets/images/logos/32x32/aut.png", "vendor/assets/images/logos/32x32/aze.png", "vendor/assets/images/logos/32x32/bel.png", "vendor/assets/images/logos/32x32/bih.png", "vendor/assets/images/logos/32x32/blr.png", "vendor/assets/images/logos/32x32/bul.png", "vendor/assets/images/logos/32x32/cro.png", "vendor/assets/images/logos/32x32/cyp.png", "vendor/assets/images/logos/32x32/cze.png", "vendor/assets/images/logos/32x32/den.png", "vendor/assets/images/logos/32x32/eng.png", "vendor/assets/images/logos/32x32/esp.png", "vendor/assets/images/logos/32x32/est.png", "vendor/assets/images/logos/32x32/fin.png", "vendor/assets/images/logos/32x32/fra.png", "vendor/assets/images/logos/32x32/fro.png", "vendor/assets/images/logos/32x32/geo.png", "vendor/assets/images/logos/32x32/ger.png", "vendor/assets/images/logos/32x32/gre.png", "vendor/assets/images/logos/32x32/hun.png", "vendor/assets/images/logos/32x32/irl.png", "vendor/assets/images/logos/32x32/isl.png", "vendor/assets/images/logos/32x32/isr.png", "vendor/assets/images/logos/32x32/ita.png", "vendor/assets/images/logos/32x32/kaz.png", "vendor/assets/images/logos/32x32/lie.png", "vendor/assets/images/logos/32x32/ltu.png", "vendor/assets/images/logos/32x32/lux.png", "vendor/assets/images/logos/32x32/lva.png", "vendor/assets/images/logos/32x32/mda.png", "vendor/assets/images/logos/32x32/mkd.png", "vendor/assets/images/logos/32x32/mlt.png", "vendor/assets/images/logos/32x32/mne.png", "vendor/assets/images/logos/32x32/ned.png", "vendor/assets/images/logos/32x32/nir.png", "vendor/assets/images/logos/32x32/nor.png", "vendor/assets/images/logos/32x32/pol.png", "vendor/assets/images/logos/32x32/por.png", "vendor/assets/images/logos/32x32/rou.png", "vendor/assets/images/logos/32x32/rus.png", "vendor/assets/images/logos/32x32/sco.png", "vendor/assets/images/logos/32x32/smr.png", "vendor/assets/images/logos/32x32/srb.png", "vendor/assets/images/logos/32x32/sui.png", "vendor/assets/images/logos/32x32/svk.png", "vendor/assets/images/logos/32x32/svn.png", "vendor/assets/images/logos/32x32/swe.png", "vendor/assets/images/logos/32x32/tur.png", "vendor/assets/images/logos/32x32/ukr.png", "vendor/assets/images/logos/32x32/wal.png"]
  s.homepage = "https://github.com/geraldb/sport.db.logos.ruby"
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "sportdb-logos"
  s.rubygems_version = "1.8.17"
  s.summary = "sportdb-logos gem - national team logos (24x24, 32x32, 48x48, 64x64) bundled for reuse w/ asset pipeline"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_development_dependency(%q<hoe>, ["~> 3.3"])
    else
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_dependency(%q<hoe>, ["~> 3.3"])
    end
  else
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
    s.add_dependency(%q<hoe>, ["~> 3.3"])
  end
end
