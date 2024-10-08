# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sgpt < Formula
  desc "SGPT is a command-line tool that provides a convenient way to interact with OpenAI models,
enabling users to run queries, generate shell commands, produce code,
and create images from text directly from the terminal."
  homepage ""
  version "2.15.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tbckr/sgpt/releases/download/v2.15.0/sgpt_Darwin_x86_64.tar.gz"
      sha256 "b968df2c2e4e9bfa0c8538d6dd5b7f1658af25e2301715b2e25bb362bdccbebf"

      def install
        bin.install "sgpt"
        bash_completion.install "completions/sgpt.bash" => "sgpt"
        zsh_completion.install "completions/sgpt.zsh" => "_sgpt"
        fish_completion.install "completions/sgpt.fish"
        man1.install "manpages/sgpt.1.gz"
      end
    end
    on_arm do
      url "https://github.com/tbckr/sgpt/releases/download/v2.15.0/sgpt_Darwin_arm64.tar.gz"
      sha256 "27e21bb8fac9894cae24c5c8847a98b6c51b58de61a5ec49f4928e76a4bc1f8c"

      def install
        bin.install "sgpt"
        bash_completion.install "completions/sgpt.bash" => "sgpt"
        zsh_completion.install "completions/sgpt.zsh" => "_sgpt"
        fish_completion.install "completions/sgpt.fish"
        man1.install "manpages/sgpt.1.gz"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tbckr/sgpt/releases/download/v2.15.0/sgpt_Linux_x86_64.tar.gz"
        sha256 "659c014d183bccddc8bba5cab964cf503fab0b257f1aa8022bc959b91ce359b2"

        def install
          bin.install "sgpt"
          bash_completion.install "completions/sgpt.bash" => "sgpt"
          zsh_completion.install "completions/sgpt.zsh" => "_sgpt"
          fish_completion.install "completions/sgpt.fish"
          man1.install "manpages/sgpt.1.gz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tbckr/sgpt/releases/download/v2.15.0/sgpt_Linux_arm64.tar.gz"
        sha256 "d0ef3378158a88880281b9789c8cb0e67c60ce2a7bd4dfe199b70225bd49aa0d"

        def install
          bin.install "sgpt"
          bash_completion.install "completions/sgpt.bash" => "sgpt"
          zsh_completion.install "completions/sgpt.zsh" => "_sgpt"
          fish_completion.install "completions/sgpt.fish"
          man1.install "manpages/sgpt.1.gz"
        end
      end
    end
  end
end
