# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CanvasSync < Formula
  desc "Canvas-sync is a  CLI to download (course files, videos, etc)
& view (deadlines, events, announcements) from Canvas
"
  homepage "https://github.com/aidanaden/canvas-sync"
  version "1.14.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.14.1/canvas-sync_Darwin_arm64.tar.gz"
      sha256 "925a791fb69a55815dedabed51e645dc85857552996402a752507392aadbdea5"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.14.1/canvas-sync_Darwin_x86_64.tar.gz"
      sha256 "0bc0c010ddb98d34ae20e9eadec160f475d0dfbf354e686d85a283fdf3e647a0"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.14.1/canvas-sync_Linux_x86_64.tar.gz"
      sha256 "10a8aacfff09b74a2da5065278d6b03e80e9654dc49df7cfbdcfd4148702aed2"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.14.1/canvas-sync_Linux_arm64.tar.gz"
      sha256 "cd074a6a31b8bf508dc63f57d48cbd8e5c1f1f9df1521e6b9ff71a5af2bb01f4"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
  end
end
