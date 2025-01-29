# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2

# Copyright 2013-present Facebook
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

Gem::Specification.new do |s|
  s.name = 'fb_bookworm'
  s.version = '0.0.1'
  s.summary = 'fb_bookworm'
  s.description = 'Program to build context around Chef cookbook code'
  s.license = 'Apache-2.0'
  s.authors = ['David Crosby']
  s.homepage = 'https://github.com/facebook/bookworm'
  s.platform = Gem::Platform::RUBY

  s.extra_rdoc_files = %w{README.md LICENSE}

  s.files = %w{README.md LICENSE} +
    Dir.glob('lib/**/*', File::FNM_DOTMATCH).reject { |f| File.directory?(f) }
  s.bindir = 'exe'
  s.executables = s.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.7.0'
  s.add_dependency 'rubocop', '>= 1.25'
end
