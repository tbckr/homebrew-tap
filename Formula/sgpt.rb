# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sgpt < Formula
  desc "SGPT is a command-line tool that provides a convenient way to interact with OpenAI models,
enabling users to run queries, generate shell commands, produce code,
and create images from text directly from the terminal."
  homepage ""
  version "2.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tbckr/sgpt/releases/download/v2.7.0/sgpt_Darwin_arm64.tar.gz"
      sha256 "4a28f5f80a23b95cc3a2fb96a13435232484e9bfd85f93e664ac35e6119b3c4d"

      def install
        bin.install "sgpt"
        bash_completion.install "completions/sgpt.bash" => "sgpt"
        zsh_completion.install "completions/sgpt.zsh" => "_sgpt"
        fish_completion.install "completions/sgpt.fish"
        man1.install "manpages/sgpt.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tbckr/sgpt/releases/download/v2.7.0/sgpt_Darwin_x86_64.tar.gz"
      sha256 "d57f717d3760aab612d816bc7663f50aadd34839b2c77bf0b29509b521fafb99"

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
    if Hardware::CPU.intel?
      url "https://github.com/tbckr/sgpt/releases/download/v2.7.0/sgpt_Linux_x86_64.tar.gz"
      sha256 "810e2eb5a44fdd9652d3060cf206024661c777e2f98cbe7ec1454315d2727418"

      def install
        bin.install "sgpt"
        bash_completion.install "completions/sgpt.bash" => "sgpt"
        zsh_completion.install "completions/sgpt.zsh" => "_sgpt"
        fish_completion.install "completions/sgpt.fish"
        man1.install "manpages/sgpt.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tbckr/sgpt/releases/download/v2.7.0/sgpt_Linux_arm64.tar.gz"
      sha256 "e43a4d54dbd5e259bf6fa836004f4bf9f48ed9e154239519b7d76c9478466c8b"

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
