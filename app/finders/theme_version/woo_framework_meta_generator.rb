module WPScan
  module Finders
    module ThemeVersion
      # Theme Version Finder from the WooFramework generators
      class WooFrameworkMetaGenerator < CMSScanner::Finders::Finder
        # @param [ Hash ] opts
        #
        # @return [ Version ]
        def passive(_opts = {})
          return unless target.target.homepage_res.body =~ Finders::MainTheme::WooFrameworkMetaGenerator::PATTERN

          return unless Regexp.last_match[1] == target.name

          WPScan::Version.new(Regexp.last_match[2], found_by: found_by, confidence: 80)
        end
      end
    end
  end
end
