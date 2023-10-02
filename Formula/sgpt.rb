# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sgpt < Formula
  desc "SGPT is a command-line tool that provides a convenient way to interact with OpenAI models,
enabling users to run queries, generate shell commands, produce code,
and create images from text directly from the terminal."
  homepage ""
  version "2.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tbckr/sgpt/releases/download/v2.1.2/sgpt_Darwin_x86_64.tar.gz"
      sha256 "78d8409f6ca4686aaab67782613a8d58031b8db4da484acdb6f091948e4e901c"

      def install
        bin.install "sgpt"
        bash_completion.install "completions/sgpt.bash" => "sgpt"
        zsh_completion.install "completions/sgpt.zsh" => "_sgpt"
        fish_completion.install "completions/sgpt.fish"
        man1.install "manpages/sgpt.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tbckr/sgpt/releases/download/v2.1.2/sgpt_Darwin_arm64.tar.gz"
      sha256 "773b08bcad11877571a856a33faf6761059c93dc85e6db33760ae4550ac9219b"

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
      url "https://github.com/tbckr/sgpt/releases/download/v2.1.2/sgpt_Linux_x86_64.tar.gz"
      sha256 "c22cf9d1102bf45c45b620e29fb47b87aee78f46af949d4ac764ded76152d438"

      def install
        bin.install "sgpt"
        bash_completion.install "completions/sgpt.bash" => "sgpt"
        zsh_completion.install "completions/sgpt.zsh" => "_sgpt"
        fish_completion.install "completions/sgpt.fish"
        man1.install "manpages/sgpt.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tbckr/sgpt/releases/download/v2.1.2/sgpt_Linux_arm64.tar.gz"
      sha256 "19f71c99531e6523b1de7212acafb26e3eaee65b992ddd0b61bf66dc9b10722e"

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
