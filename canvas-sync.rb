# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CanvasSync < Formula
  desc "Canvas-sync is a  CLI to download (course files, videos, etc)
& view (deadlines, events, announcements) from Canvas
"
  homepage "https://github.com/aidanaden/canvas-sync"
  version "1.26.18"

  depends_on "ffmpeg"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.18/canvas-sync_Darwin_x86_64.tar.gz"
      sha256 "9f88572010d0aecb6b18f03c3eba0e914bd63943414ec79856dcbe0c68ba42cf"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.18/canvas-sync_Darwin_arm64.tar.gz"
      sha256 "123fea943ea0e7f40f3da76146bb46357806826f811e72e355e95752bc21549d"

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
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.18/canvas-sync_Linux_arm64.tar.gz"
      sha256 "6eff995a3fbb9da73356d396b4cc953afc7437015ddf2c5b96fcf35449c8602b"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.18/canvas-sync_Linux_x86_64.tar.gz"
      sha256 "48e4b6c73ec5ed4f9e9849aa9340a346defe776ef55c5fcd2312e0f3db718da1"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
  end
end
