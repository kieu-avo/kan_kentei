# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.kankentei.com"
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.create do
  add 'root_paht', :changefreq => 'daily'
end
