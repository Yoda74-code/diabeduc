# Install pods needed to embed Flutter framework in iOS.
require 'json'

def parse_KV_file(file, separator='=')
  file_abs_path = File.expand_path(file)
  if !File.exist?(file_abs_path)
    return [];
  end
  generated_key_values = {}
  File.foreach(file_abs_path) do |line|
    key, value = line.strip.split(separator, 2)
    if key && value
      generated_key_values[key] = value
    end
  end
  generated_key_values
end

def flutter_root
  generated_xcode_build_settings = parse_KV_file(File.join(__dir__, 'Generated.xcconfig'))
  if generated_xcode_build_settings.empty?
    puts "Generated.xcconfig must exist. Please run \"flutter pub get\" once first."
    exit
  end
  generated_xcode_build_settings['FLUTTER_ROOT']
end

# Ensure that ENABLE_BITCODE is set to NO, add the flutter framework pod, and add other pods.
def flutter_install_all_ios_pods(installer)
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ENABLE_BITCODE'] = 'NO'
    end
  end
  File.foreach(File.join(__dir__, 'podhelper.rb')).each do |line|
    eval line
  end
end
