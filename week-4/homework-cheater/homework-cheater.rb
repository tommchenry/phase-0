def essay_writer(title, topic, date, thesis_statement, pronoun)
  if pronoun == "male"
    pronoun = "He"
  else
    pronoun = "She"
  end
  name = topic.gsub(/\s+/m, ' ').strip.split(" ")
  date = date.to_s
  puts topic + " was an important person in " + date + ". " + pronoun + " did a lot. I want to learn more about him. " + thesis_statement + " " + name[1] + "'s contribution is important."
end

essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "male")