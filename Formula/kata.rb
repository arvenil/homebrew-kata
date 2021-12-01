# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kata < Formula
  desc "Kata 形🤺 exercises"
  homepage "https://github.com/arvenil/kata"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arvenil/kata/releases/download/v1.1.0/kata_1.1.0_Darwin_arm64.tar.gz"
      sha256 "fc7128d4b20b8bee5cb2f0cd5f5cf5d8c48801760a9c0b3b48db453e6d1c743d"

      def install
        bin.install "bsearch"
        bin.install "ladder"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arvenil/kata/releases/download/v1.1.0/kata_1.1.0_Darwin_x86_64.tar.gz"
      sha256 "ce73662f71b45fb5474de424edf7b1434a8fc50f7612a4df337c43305b63f537"

      def install
        bin.install "bsearch"
        bin.install "ladder"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arvenil/kata/releases/download/v1.1.0/kata_1.1.0_Linux_arm64.tar.gz"
      sha256 "89eee3c329db6ca57d22057a0a09f9af0e7894596e981896f46ed08ec4675e05"

      def install
        bin.install "bsearch"
        bin.install "ladder"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arvenil/kata/releases/download/v1.1.0/kata_1.1.0_Linux_x86_64.tar.gz"
      sha256 "3af1119cade2bf1d7d0efd35df2f45196a502961a2d70f630cdf42d6e2a6eff0"

      def install
        bin.install "bsearch"
        bin.install "ladder"
      end
    end
  end

  test do
    system "#{bin}/bsearch -h"
    system "#{bin}/ladder -h"
  end
end
