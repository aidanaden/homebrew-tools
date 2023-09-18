# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CanvasSync < Formula
  desc ""
  homepage "https://github.com/aidanaden/homebrew-tools"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.2.0/canvas-sync_Darwin_x86_64.tar.gz"
      sha256 "9659139093a0b2ced1bc05175c8c079ef95fc6847c0e5501a8322a9654fcfc3f"

      def install
        bin.install "canvas-sync"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.2.0/canvas-sync_Darwin_arm64.tar.gz"
      sha256 "4cdb7685649e0ec0a41200cdd8e49d2d524a4aa8427e00f41832c7bad357e7c9"

      def install
        bin.install "canvas-sync"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.2.0/canvas-sync_Linux_arm64.tar.gz"
      sha256 "013d0a8efbf79d897ba16f1f1d8953e51412127d04dc1e62cd19e2969f5c74df"

      def install
        bin.install "canvas-sync"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aidanaden/canvas-sync/releases/download/v1.2.0/canvas-sync_Linux_x86_64.tar.gz"
      sha256 "4f11951fa8bda9c82884ca1bbaa7e0cd6e9c305e81d0937899341f41989d5d71"

      def install
        bin.install "canvas-sync"
      end
    end
  end
end
