module Jekyll
    module RemoveLiquidTagsFilter
        def remove_liquid_tags(input)
            input.to_s.gsub("/{%.*?%}/m", '').gsub("/{{.*?}}/m", '')
        end
    end
end

Liquid::Template.register_filter(Jekyll::RemoveLiquidTagsFilter)
  