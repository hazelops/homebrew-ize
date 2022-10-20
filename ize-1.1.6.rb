# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ize116 < Formula
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra"
  homepage "https://ize.sh/"
  version "1.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/1.1.6/ize_1.1.6_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "31563cfab2778fae8886df68c09a29a8bd05df059ed43c0c4d0c8dde719df63c"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hazelops/ize/releases/download/1.1.6/ize_1.1.6_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8be7496f432474c7e2a4288f926a66a9e23237a8a01a1a5a4b640f54c4e85eca"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/1.1.6/ize_1.1.6_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6896763113bcfcae9c1f0900c45aa199dbe057e20b93abbcb8d11ceb92f97b07"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/1.1.6/ize_1.1.6_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a7a43d7f875497b6d2fac4964f7f924d7d18abddd5544179b6008140261a40c5"

      def install
        bin.install "ize"
      end
    end
  end

  conflicts_with "ize-dev"

  test do
    system "#{bin}/ize"
  end
end