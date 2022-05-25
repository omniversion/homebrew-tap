# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Omniversion < Formula
  desc "Omniversion"
  homepage "https://layer9.berlin/"
  version "0.46.14"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.46.14/brew_omniversion_0.46.14_darwin_amd64.tar.gz"
      sha256 "0b104acef1c727cba212ff815fe6a39d3f8748b7074bd4554f8a5d9d82688b02"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/omniversion/omniversion/releases/download/v0.46.14/brew_omniversion_0.46.14_darwin_arm64.tar.gz"
      sha256 "e74acb97a7a712e4dd85f6c7e54106827a5ae2f838542f5d04f816b643099803"

      def install
        bin.install "omniversion"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.46.14/brew_omniversion_0.46.14_linux_amd64.tar.gz"
      sha256 "7ae8a4f73f5e3623c60283eeffd694696f876638051eff417615f3c0ba72e47e"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omniversion/omniversion/releases/download/v0.46.14/brew_omniversion_0.46.14_linux_arm64.tar.gz"
      sha256 "3763916d041b088357fb47e8dfbdc2f919664c7015c5b2396725972d774bdc46"

      def install
        bin.install "omniversion"
      end
    end
  end

  test do
    system "#{bin}/omniversion version"
  end
end
