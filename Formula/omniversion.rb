# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Omniversion < Formula
  desc "Omniversion"
  homepage "https://layer9.berlin/"
  version "0.43.8"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.43.8/brew_omniversion_0.43.8_darwin_amd64.tar.gz"
      sha256 "fde535a2d0aa00dbb4f122aff0da5eeb3825df2d498465fdee4553165391015b"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/omniversion/omniversion/releases/download/v0.43.8/brew_omniversion_0.43.8_darwin_arm64.tar.gz"
      sha256 "92808d4cc823e7bfe8ea96fc277723a7ffde2951fd16cea9c58fff7835197daa"

      def install
        bin.install "omniversion"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.43.8/brew_omniversion_0.43.8_linux_amd64.tar.gz"
      sha256 "cbcdba1c21feebf758aa505eca64e0b9258bcc46d251af46182a397f26b96341"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omniversion/omniversion/releases/download/v0.43.8/brew_omniversion_0.43.8_linux_arm64.tar.gz"
      sha256 "b586e9244d8af06991e22c5f700c9b88ee6b78e4d38de99ecc0b279c3814f25d"

      def install
        bin.install "omniversion"
      end
    end
  end

  test do
    system "#{bin}/omniversion version"
  end
end
