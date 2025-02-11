require 'nokogiri'

module Jekyll
  class ImageExtractor < Generator
    priority :lowest

    def generate(site)
      Jekyll::Hooks.register :site, :post_write do
       ## puts "✅ Plugin image_extractor.rb gestart!"

        sitemap_path = File.join(site.dest, "sitemap-images.xml")

        File.open(sitemap_path, "w") do |file|
          begin
           ## puts "✅ Sitemap-bestand geopend: #{sitemap_path}"

            file.puts "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
            file.puts "<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\""
            file.puts "        xmlns:image=\"http://www.google.com/schemas/sitemap-image/1.1\">"

            site.posts.docs.each do |post|
              rendered_content = site.liquid_renderer
                                    .file(post.path)
                                    .parse(post.content)
                                    .render!(site.site_payload, registers: { site: site })

              doc = Nokogiri::HTML(rendered_content)
              images = doc.css('img')

              if images.any?
                ##puts "📸 Afbeeldingen gevonden in: #{post.url}"

                file.puts "  <url>"
                file.puts "    <loc>#{site.config['url']}#{post.url}</loc>"

                images.each do |img|
                  img_src = img['src']
                  img_alt = img['alt'] || "Geen ALT-tekst"
                  next unless img_src && !img_src.empty?

                  absolute_url = img_src.start_with?("http") ? img_src : "#{site.config['url']}#{img_src}"
                  absolute_url.gsub!(/\{\{.*?\}\}/, "") if absolute_url
                  absolute_url.strip! if absolute_url

                 ## puts "  ➕ Toegevoegd afbeelding: #{absolute_url} (alt: #{img_alt})"

                  file.puts "    <image:image>"
                  file.puts "      <image:loc>#{absolute_url}</image:loc>"
                  file.puts "      <image:title>#{img_alt}</image:title>"
                  file.puts "    </image:image>"
                end

                file.puts "  </url>"
              end
            end

            file.puts "</urlset>"
            puts "✅ Plugin image_extractor.rb zegt: Sitemap gegenereerd en opgeslagen in: #{sitemap_path}"

            # Controleer of bestand bestaat na schrijven
            if File.exist?(sitemap_path)
             ## puts "✅ Bestand bestaat daadwerkelijk: #{sitemap_path}"
            else
              puts "❌ Het bestand is NIET gevonden na schrijven!"
            end

          rescue => e
            puts "❌ FOUT bij schrijven van sitemap: #{e.message}"
          end
        end
      end
    end
  end
end
