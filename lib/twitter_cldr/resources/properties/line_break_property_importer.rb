# encoding: UTF-8

# Copyright 2012 Twitter, Inc
# http://www.apache.org/licenses/LICENSE-2.0

module TwitterCldr
  module Resources
    module Properties

      class LineBreakPropertyImporter < PropertyImporter
        DATA_FILE = 'ucd/LineBreak.txt'
        PROPERTY_NAME = 'Line_Break'

        requirement :unicode, Versions.unicode_version, [DATA_FILE]
        output_path 'unicode_data/properties'
        ruby_engine :mri

        def property_name
          PROPERTY_NAME
        end

        private

        def source_path
          requirements[:unicode].source_path_for(DATA_FILE)
        end
      end

    end
  end
end
