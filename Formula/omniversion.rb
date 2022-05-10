# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Omniversion < Formula
  desc "Omniversion"
  homepage "https://layer9.berlin/"
  version "0.43.19"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.43.19/brew_omniversion_0.43.19_darwin_amd64.tar.gz"
      sha256 "6d0f2673eb517457acbc2a5af35c48b5073b0aa336395a48bd99cb9a1f702da3"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/omniversion/omniversion/releases/download/v0.43.19/brew_omniversion_0.43.19_darwin_arm64.tar.gz"
      sha256 "9a78f6c4aaed22d6ffefad2839434f2be21f32ed440c20008ca6428b82a94be9"

      def install
        bin.install "omniversion"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.43.19/brew_omniversion_0.43.19_linux_amd64.tar.gz"
      sha256 "a5bc86298afb150d0917fb50190e3f38432d04dec2df0572c1c5d364b8469766"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omniversion/omniversion/releases/download/v0.43.19/brew_omniversion_0.43.19_linux_arm64.tar.gz"
      sha256 "58645712d4b11a2ff07a88cc5e2ad078c9c0d477fcf014633c60b81b03e1573c"

      def install
        bin.install "omniversion"
      end
    end
  end

  test do
    system "#{bin}/omniversion version"
  end
end
