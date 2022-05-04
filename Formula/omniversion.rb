# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Omniversion < Formula
  desc "Omniversion"
  homepage "https://layer9.berlin/"
  version "0.42.23"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.23/brew_omniversion_0.42.23_darwin_arm64.tar.gz"
      sha256 "51ebd91a39b527dec1ee5d0ea164877848b902ef3e2ab3b4e895abc0b78be848"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.23/brew_omniversion_0.42.23_darwin_amd64.tar.gz"
      sha256 "e2cd1966133666dac8e3a920dc08e02da30dd09ec9ee962d2115ad9fd50cbcb0"

      def install
        bin.install "omniversion"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.23/brew_omniversion_0.42.23_linux_amd64.tar.gz"
      sha256 "7e1004aac998d3f40b090bb47fc57c94747d3e4ad260749fc5f11bcca9f24c29"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.23/brew_omniversion_0.42.23_linux_arm64.tar.gz"
      sha256 "d8ff6cf5a50d08e1d78daab664bfcc8beec84592baccb79dbd9d47cb8e78e3a5"

      def install
        bin.install "omniversion"
      end
    end
  end

  test do
    system "#{bin}/omniversion version"
  end
end
