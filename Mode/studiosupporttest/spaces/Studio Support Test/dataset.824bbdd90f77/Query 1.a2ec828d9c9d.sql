-- Returns first 100 rows from tutorial.animal_crossing_achievements
  SELECT 
		name,
		award_criteria,
		unique_values,
		internal_id,
		internal_name,
		internal_category,
		num_of_tiers,
		tier_1,
		tier_2,
		tier_3,
		tier_4,
		tier_5,
		reward_tier_1,
		reward_tier_2,
		reward_tier_3,
		reward_tier_4,
		reward_tier_5,
		reward_tier_6,
		sequential,
		version,
		unique_entry_id
 FROM tutorial.animal_crossing_achievements LIMIT 100;