#!/usr/bin/env ruby -wU

MAC_OS = %w[intro osx_command_line_tools github homebrew osx_sublime_text osx_oh_my_zsh github_rsa dotfiles ssh_osx rbenv_osx rbenv_ruby osx_postgresql osx_security checkup alumni_platform osx_slack osx_preferences].freeze

filenames = {
  'macOS.md' => MAC_OS
}

filenames.each do |filename, partials|
  File.open(filename.to_s, 'w:utf-8') do |f|
    partials.each do |partial|
      f << File.read(File.join('_partials', "#{partial}.md"), encoding: "utf-8")
      f << "\n\n"
    end
  end
end
