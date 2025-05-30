# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sgpt < Formula
  desc "SGPT is a command-line tool that provides a convenient way to interact with OpenAI models,
enabling users to run queries, generate shell commands, produce code,
and create images from text directly from the terminal."
  homepage ""
  version "2.17.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tbckr/sgpt/releases/download/v2.17.0/sgpt_Darwin_x86_64.tar.gz"
      sha256 "3f57810eafa6a5a41e81d3d13d93dacfbfa5f7f91a4015a010daba483119ab57"

      def install
        bin.install "sgpt"
        bash_completion.install "completions/sgpt.bash" => "sgpt"
        zsh_completion.install "completions/sgpt.zsh" => "_sgpt"
        fish_completion.install "completions/sgpt.fish"
        man1.install "manpages/sgpt.1.gz"
      end
    end
    on_arm do
      url "https://github.com/tbckr/sgpt/releases/download/v2.17.0/sgpt_Darwin_arm64.tar.gz"
      sha256 "944170796ea56ad0afdb903369e088d3e12cb37382bc2913d88a9ad2d2846c97"

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
        url "https://github.com/tbckr/sgpt/releases/download/v2.17.0/sgpt_Linux_x86_64.tar.gz"
        sha256 "74bedfc1f449dac3e363f8ee12c267c0febf9f06d5fc9818f26909f48cd6bb98"

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
        url "https://github.com/tbckr/sgpt/releases/download/v2.17.0/sgpt_Linux_arm64.tar.gz"
        sha256 "d6e44122d09e25660148b275cf47f2c433930d8452bd1f97c76bbda4200f84a7"

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
