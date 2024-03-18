module Jekyll
    module RemoveLiquidTagsFilter
        def remove_liquid_tags(input)
            cleaned_input = input.to_s.gsub(/{%.*?%}/m, '')
            cleaned_input
        end
    end
end

Liquid::Template.register_filter(Jekyll::RemoveLiquidTagsFilter)
  