KAIROS_DB = YAML.load_file(File.join(Rails.root, "config", "kairos_database.yml"))[Rails.env.to_s]
