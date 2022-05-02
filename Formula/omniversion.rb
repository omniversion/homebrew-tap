# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Omniversion < Formula
  desc "Omniversion"
  homepage "https://layer9.berlin/"
  version "0.42.0"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.0/brew_omniversion_0.42.0_darwin_amd64.tar.gz"
      sha256 "ee9a0390f21b7ae6e8c9f58e35f37f2f4cd16a34317b63550b94fb4523b27855"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.0/brew_omniversion_0.42.0_darwin_arm64.tar.gz"
      sha256 "80fa24e9941ca5fb53f47625bc321f673ec731973824dba269881f1d90ab12e7"

      def install
        bin.install "omniversion"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.0/brew_omniversion_0.42.0_linux_amd64.tar.gz"
      sha256 "85d9309f28a8dca34b911a6fc06addb983534932c9868dd28fd3c25b54426084"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.0/brew_omniversion_0.42.0_linux_arm64.tar.gz"
      sha256 "8ba58338e2106ca54dacbbb8f3bc3a206e5664b399326f0da452a6faf9f0c8f0"

      def install
        bin.install "omniversion"
      end
    end
  end

  test do
    system "#{bin}/omniversion version"
  end
end
