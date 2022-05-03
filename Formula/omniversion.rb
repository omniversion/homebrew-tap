# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Omniversion < Formula
  desc "Omniversion"
  homepage "https://layer9.berlin/"
  version "0.42.7"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.7/brew_omniversion_0.42.7_darwin_amd64.tar.gz"
      sha256 "3f69e7a082014683daffdc470d6204c91550864fd74c47874d161ccee55e2549"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.7/brew_omniversion_0.42.7_darwin_arm64.tar.gz"
      sha256 "1fd79c1b7c3a6121f484393675367524c49d83f3dbf807b88ee41bc8b492c1d2"

      def install
        bin.install "omniversion"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.7/brew_omniversion_0.42.7_linux_arm64.tar.gz"
      sha256 "287fcccf05eb99ae54938b1d3e6d6102e7f12a9c7b95062a222ce432b7eabb8f"

      def install
        bin.install "omniversion"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/omniversion/omniversion/releases/download/v0.42.7/brew_omniversion_0.42.7_linux_amd64.tar.gz"
      sha256 "009978ec157ac33c073a32a60c3b7972b6b4ec7e26c5c73b850d6002e477b13b"

      def install
        bin.install "omniversion"
      end
    end
  end

  test do
    system "#{bin}/omniversion version"
  end
end
