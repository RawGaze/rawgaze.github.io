## dit script stopt beide sitemaps (voor SEO) in robots.txt
Jekyll::Hooks.register :site, :post_write do |site|
    robots_path = File.join(site.dest, "robots.txt")
  
    if File.exist?(robots_path)
      content = File.read(robots_path)
  
      # Voorkomen dat de regel meerdere keren wordt toegevoegd
      unless content.include?("Sitemap: #{site.config['url']}/sitemap-images.xml")
        File.open(robots_path, "a") do |file|
          file.puts "Sitemap: #{site.config['url']}/sitemap-images.xml"
        end
        puts "✅ Plugin appendto_robots.rb zegt: Toegevoegd aan robots.txt: Sitemap: #{site.config['url']}/sitemap-images.xml"
      end
    else
      puts "⚠️ Waarschuwing: robots.txt niet gevonden in _site, niets toegevoegd."
    end
  end
  