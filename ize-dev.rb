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
      sha256 "2d0ae1ce2f4205bb075785f0f2f917619cc5655c4a31e272f68b2b57e6a48b2d"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4db18426cef698c56214aa4b75baaafd968aca385c3748de2c3e95e589e9a733"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1aca73ff185fafc2521021f3fa28faa13bf9d16ffa68faa6923a6b990007b863"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d9566acfa1b2aadaab37f888d9dc9ddf22fe0cff3411615e5dde4ad7be079375"

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
