class CleanedContent


   def initialize(content)
      @content = content
   end
   
   def actual_cleaning
   array = 
   [
       "<h4>", "</p>", "<p>", "\r\n\r\n", "<h3>", "&nbsp;" "<a", "</a>", "<li>", "</ul>", "</li>", "</h3>", "&nbsp;", "<ul>", /#{URI::regexp}/, "href=","id=",
        ">Learn more about CHD.", /"/, "</h4>",  "<a", ">",
       "<drupal-entity data-embed-button=media_entity_embed data-entity-embed-display=entity_", "<em><strong>", "</strong></em><br /", "<strong></strong>",
       "<em<strong", "</strong</em<br /",
       "data-entity-embed-display-settings={&quot;image_style&quot;:&quot;&quot;,&quot;image_link&quot;:&quot;&quot;}",
       "data-entity-type=media data-entity-uu2f2dd760-be1f-43f0-8c5f-fea90372617b data-langcode=en</drupal-entity",
       "anch_36",   "anch_37",   "anch_38", "anch_39",   "anch_40", "anch_41", "anch_42",   "anch_43",   "anch_44",   "anch_45",  
       "anch_46",   "anch_47", "anch_48",   "anch_49",   "anch_50", "anch_51",    "anch_52",   "anch_53",  "anch_54", 
       "anch_55", "anch_56", "anch_57",   "anch_58",
       "Use this checklist to find out if you are at risk for falling[PDF - 1.8 MB].",
       "Find out how staying active can help you stay healthy[PDF - 1.2 MB].",
       "Check out this free workout guide for older adults."
    ] 
    
       corrected = @content
       array.each do |tag|
       corrected = corrected.gsub(tag, "")
   end
   return corrected
      end
end
 
