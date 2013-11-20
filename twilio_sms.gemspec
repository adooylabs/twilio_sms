# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twilio_sms/version'

Gem::Specification.new do |spec|
  spec.name          = "twilio_sms"
  spec.version       = TwilioSms::VERSION
  spec.authors       = ["Audee Velasc"]
  spec.email         = ["auds@adooylabs.com"]
  spec.description   = %q{"simple sms sender using twilio"}
  spec.summary       = %q{"easily send sms from you app using twilio"}
  spec.homepage      = "http://www.adooylabs.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
