# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CanvasSync < Formula
  desc "Canvas-sync is a  CLI to download (course files, videos, etc)
& view (deadlines, events, announcements) from Canvas
"
  homepage "https://github.com/aidanaden/canvas-sync"
  version "1.26.26"

  depends_on "ffmpeg"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.26/canvas-sync_Darwin_arm64.tar.gz"
      sha256 "2318c340384dfe16e7e237d99816641253786e7db199d77893465dcaf4cc1134"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.26/canvas-sync_Darwin_x86_64.tar.gz"
      sha256 "971772e5d8ce39c76e759b5ca25e0e69317d00d0a6d0c3c3f43856ee144ca82c"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.26/canvas-sync_Linux_arm64.tar.gz"
      sha256 "5995ae0fe60e9b5ba9fc2f479ad8a270c67a869bddb27710e562c0d38db91a6b"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.26/canvas-sync_Linux_x86_64.tar.gz"
      sha256 "8303401129436ada9d9717cad6171d5d0090033c885cd788ed11d8905f5b5ecb"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
  end
end
