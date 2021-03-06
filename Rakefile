require 'hoe'
require './lib/sportdb/logos/version.rb'


Hoe.spec 'sportdb-logos' do

  self.version = SportDb::Logos::VERSION

  self.summary = 'sportdb-logos gem - national team logos (24x24, 32x32, 48x48, 64x64) bundled for reuse w/ asset pipeline'
  self.description = summary

  self.urls    = ['https://github.com/geraldb/sport.db.logos.ruby']

  self.author  = 'Gerald Bauer'
  self.email   = 'opensport@googlegroups.com'

  self.readme_file  = 'README.md'
  self.history_file = 'History.md'

end


################################
#


# ls *.jpg | xargs -r -I FILE convert FILE -thumbnail 64x64 FILE_thumb.png

## LOGO_SIZES = [24,32,48,64]  # e.g. 24x24, 32x32, etc.
# for now use only 24x24 and 32x32 to save disk space
LOGO_SIZES = [24,32] 


# NB: logos reside in its own repo! - clone as a sibling to this repo to make it work
LOGO_INPUT_DIR = '../sport.db.logos'

LOGO_OUTPUT_DIR = 'vendor/assets/images/logos'



require 'hybook'


desc 'debug build album'
task :debug_album do
  album = HyBook::Album.create_from_folder( LOGO_INPUT_DIR, title: 'sport.db.logos' )
  pp album

  puts HyBook.render_album( album, size: 24 )
end


desc 'sportdb-logos - build album pages'
task :albums do

  PAGES_DIR = './site'

  album =  HyBook::Album.create_from_folder( LOGO_INPUT_DIR, title: 'sport.db.logos' ) 

  ## build one album page per logo size (e.g. 24x24, 32x32 etc.)
  LOGO_SIZES.each do |size|

    TextUtils::Page.create( "#{PAGES_DIR}/#{size}.md", frontmatter: {
                                                          layout: 'album',
                                                          title: "sport.db.logos (#{size}x#{size})",
                                                          permalink: "/#{size}.html" } ) do |page|
        page.write HyBook.render_album( album,
                                          title: "sport.db.logos (#{size}x#{size})",
                                          size: size )
    end # page
  end # each LOGO_SIZES

  puts 'Done.'
end


desc 'sportdb-logos - build thumbs'
task :build_thumbs do

  files = Dir[ "#{LOGO_INPUT_DIR}/**/*.{png,gif,jpg}" ]

  files.each do |filename|
    extname  = File.extname( filename )
    basename_in  = File.basename( filename, extname )   # NB: remove extname (that is, suffix e.g. .png,.jpg,.gif etc.)

    # strip leading 1-west-  (optional for organizing logos)
    #  e.g. 3-west-austrias  becomes austrias
    basename_out = basename_in.gsub( /[0-9a-z]+-/, '' )

    puts "filename: #{filename}, basename_in: #{basename_in}, basename_out: #{basename_out}, extname: #{extname}"

    LOGO_SIZES.each do |size|

      ## make sure outputdir exits
      FileUtils.mkpath( "#{LOGO_OUTPUT_DIR}/#{size}x#{size}" )  unless File.exists?( "#{LOGO_OUTPUT_DIR}/#{size}x#{size}" )

      # e.g. convert #{filename} -thumbnail 48x48 vendor/assets/images/labels/48x48/#{basename_out}.png"
      cmd = "convert #{filename} -thumbnail #{size}x#{size} #{LOGO_OUTPUT_DIR}/#{size}x#{size}/#{basename_out}.png"
      puts "  #{cmd}"
      system( cmd )
    end
  end

  ## todo: generate lookup list of all available labels (lets us check if label exists)
  puts 'Done.'
end


desc 'sportdb-logos - build manifest'
task :build_manifest  do

  txt = File.read( 'Manifest.txt.tpl' )

  ## append all thumbnails (24x24,32x32,48x48,64x64)

  files = Dir[ "#{LOGO_INPUT_DIR}/**/*.{png,gif,jpg}" ]
  files = files.map do |filename|
    # strip folders
    # force extension  to .png

    extname  = File.extname( filename )
    basename_in = File.basename( filename, extname )   # NB: remove extname (that is, suffix e.g. .png,.jpg,.gif etc.)

    # strip leading 1-west-  (optional for organizing logos)
    #  e.g. 3-west-austrias  becomes austrias
    basename_out = basename_in.gsub( /[0-9a-z]+-/, '' )

    puts "filename: #{filename}, basename_in: #{basename_in}, basename_out: #{basename_out}, extname: #{extname}"

    "#{basename_out}.png"
  end
  files.sort!

  LOGO_SIZES.each do |size|
    files.each do |filename|
       txt << "#{LOGO_OUTPUT_DIR}/#{size}x#{size}/#{filename}\n"
    end
  end

  File.open( 'Manifest.txt', 'w') do |file|
    file.write( txt )
  end

  puts 'Done.'
end



desc 'sportdb-logos - build thumbnails from originals'
task :build => [:build_thumbs, :build_manifest]