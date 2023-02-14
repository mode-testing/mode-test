-- Returns first 100 rows from tutorial.animal_crossing_bottoms
  SELECT 
		name,
		variation,
		diy,
		buy,
		sell,
		color_1,
		color_2,
		size,
		source,
		source_notes,
		seasonal_availability,
		mannequin_piece,
		version,
		style,
		label_themes,
		villager_equippable,
		catalog,
		filename,
		internal_id,
		unique_entry_id
 FROM tutorial.animal_crossing_bottoms LIMIT 100;