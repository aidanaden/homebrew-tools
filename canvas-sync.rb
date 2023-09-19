# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CanvasSync < Formula
  desc ""
  homepage "https://github.com/aidanaden/homebrew-tools"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.7.0/canvas-sync_Darwin_x86_64.tar.gz"
      sha256 "b2e3147baada369d236bf7d356fb16aedc37ebfb25eea2ef1f60dcd4f5002eb6"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.7.0/canvas-sync_Darwin_arm64.tar.gz"
      sha256 "6f02456c33a3ffa909f7eb1f6542559bff11317a75d737112c20a79952806857"

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
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.7.0/canvas-sync_Linux_arm64.tar.gz"
      sha256 "5de7668d23c2a4bd85cd3653ddc104e3b6db9c85fa067de1cd55e5287c92f2e7"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.7.0/canvas-sync_Linux_x86_64.tar.gz"
      sha256 "91808f6c7a314101d822ddd39607f36f3d531c301c5ff58d4f50d169ddbf93b9"

      def install
        bin.install "canvas-sync"
        bash_completion.install "completions/canvas-sync.bash" => "canvas-sync"
        zsh_completion.install "completions/canvas-sync.zsh" => "_canvas-sync"
        fish_completion.install "completions/canvas-sync.fish"
      end
    end
  end
end
