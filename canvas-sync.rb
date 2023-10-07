# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CanvasSync < Formula
  desc "Canvas-sync is a  CLI to download (course files, videos, etc)
& view (deadlines, events, announcements) from Canvas
"
  homepage "https://github.com/aidanaden/canvas-sync"
  version "1.26.23"

  depends_on "ffmpeg"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.23/canvas-sync_Darwin_arm64.tar.gz"
      sha256 "f34a5ccfb5572186a6a55539e44e10d85ba4df39cc802e50c73728c4a085413b"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.23/canvas-sync_Darwin_x86_64.tar.gz"
      sha256 "b86429b01060998a3b56991fe88a85bd4148ac5af82c044d94ed511c65b58d78"

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
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.23/canvas-sync_Linux_arm64.tar.gz"
      sha256 "066dcfefa36cc6e9d1f855704c8f8981f8f41ce3509ab541931a0d88b6cacb26"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.26.23/canvas-sync_Linux_x86_64.tar.gz"
      sha256 "b363f672cd75215f1e2e8a9417b8d1dc57930cddb17a7b4d73206fb49cd105a0"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
  end
end
