# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Omniversion < Formula
  desc "Omniversion"
  homepage "https://layer9.berlin/"
  version "0.38.1"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.38.1/brew_omniversion_0.38.1_darwin_amd64.tar.gz"
      sha256 "1a11e398dd39cc0d9b1785c959fe549fa9e6ab111fe1adba63d2b3d656b6a142"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/omniversion/omniversion/releases/download/v0.38.1/brew_omniversion_0.38.1_darwin_arm64.tar.gz"
      sha256 "36c13d1d2cfa007296324b35b23d50f2a3cd12b108d78db5cc0999c2f0190cc8"

      def install
        bin.install "omniversion"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omniversion/omniversion/releases/download/v0.38.1/brew_omniversion_0.38.1_linux_arm64.tar.gz"
      sha256 "e226f49e70e3f8781305a1d4b9c84bdf45833017d4f61e2768a7d62d39ac5154"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.38.1/brew_omniversion_0.38.1_linux_amd64.tar.gz"
      sha256 "471d5294def0cf4651f192394679c8f6db6b8403e29f0bc7cf7a37b524229fc4"

      def install
        bin.install "omniversion"
      end
    end
  end

  test do
    system "#{bin}/omniversion version"
  end
end
