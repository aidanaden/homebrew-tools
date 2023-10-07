# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CanvasSync < Formula
  desc "Canvas-sync is a  CLI to download (course files, videos, etc)
& view (deadlines, events, announcements) from Canvas
"
  homepage "https://github.com/aidanaden/canvas-sync"
  version "1.26.32"

  depends_on "ffmpeg"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.32/canvas-sync_Darwin_arm64.tar.gz"
      sha256 "dda8594bddd02d7b17be3b4127f5fd11adf9455d37414f8b552b715c26476537"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.32/canvas-sync_Darwin_x86_64.tar.gz"
      sha256 "a3100ee614c5e628cc09d5667dae2804fb504524f0bd70d866bbb14bd5e5f7a1"

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
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.32/canvas-sync_Linux_x86_64.tar.gz"
      sha256 "ea7a4733634fbbd8f1f0b0dde8bc3618c4d06ab352116ace7c8a58ab5931428b"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.32/canvas-sync_Linux_arm64.tar.gz"
      sha256 "02b1e8ec96f47d4ec583c13c6a09f9c196396428808d6ba7cbda80616208d06b"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
  end
end
