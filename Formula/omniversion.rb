# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Omniversion < Formula
  desc "Omniversion"
  homepage "https://layer9.berlin/"
  version "0.42.20"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.20/brew_omniversion_0.42.20_darwin_amd64.tar.gz"
      sha256 "d04099b86c7ceaac971f12a1c14a2f9ff278a11cf82206e5c48096408136f885"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.20/brew_omniversion_0.42.20_darwin_arm64.tar.gz"
      sha256 "6265f36cdf92b0320191f80222d57c1a298d06b84b0c468797e7b7b64d0eb7f8"

      def install
        bin.install "omniversion"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.20/brew_omniversion_0.42.20_linux_amd64.tar.gz"
      sha256 "f64fae600b962378c83518e79a1ec33a7a3ad1c26025a7b4df6261a21e8b1572"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.20/brew_omniversion_0.42.20_linux_arm64.tar.gz"
      sha256 "1ea937c838508c7794d7aa0aeed18ecb525b207df48fe2325b195086c3da8746"

      def install
        bin.install "omniversion"
      end
    end
  end

  test do
    system "#{bin}/omniversion version"
  end
end
