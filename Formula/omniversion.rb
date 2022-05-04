# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Omniversion < Formula
  desc "Omniversion"
  homepage "https://layer9.berlin/"
  version "0.42.28"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.28/brew_omniversion_0.42.28_darwin_amd64.tar.gz"
      sha256 "c13c762313df566829f7d4dec999a2aa11039e175941a6b94037d0f0884cde90"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.28/brew_omniversion_0.42.28_darwin_arm64.tar.gz"
      sha256 "df8e6bcb0eaf3978b76584ec6e9dd6c70535172b1ff74c01dbb6f7f197e4aab8"

      def install
        bin.install "omniversion"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.28/brew_omniversion_0.42.28_linux_amd64.tar.gz"
      sha256 "4222e90f61cb9ddbf006f1a317533fd5509a309783213b990863318c66524754"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.28/brew_omniversion_0.42.28_linux_arm64.tar.gz"
      sha256 "0e7a2b2eb40f00c73919fc06798356df6a16fd5ac79d443b1c4d49fbdd4b9908"

      def install
        bin.install "omniversion"
      end
    end
  end

  test do
    system "#{bin}/omniversion version"
  end
end
