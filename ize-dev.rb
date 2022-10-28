# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IzeDev < Formula
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra"
  homepage "https://ize.sh/"
  version "0.0.0-dev"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "194573ee6c745d72a3af91104d05341f0dbdd6e1abb1583022b3ec6d171efcdf"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b8d6a48211ba6a6b18034561041abd2d763e677bfcef9776e2888fd491e7513e"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d9bbedcc9152affc171c59ba1769d8a41316609f67d4b44f318e8d6fd2870421"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ca84247c6a04d2c5fa01f41143bf8db556543b1dff692a12c0c66c3e482f47f2"

      def install
        bin.install "ize"
      end
    end
  end

  conflicts_with "ize"

  test do
    system "#{bin}/ize"
  end
end
