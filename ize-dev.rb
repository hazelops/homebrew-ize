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
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6b02f44c7b8c18df5916aaa6169d618ef960b49e80c84a4a52ccddea38ce7bbc"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "99ea5aa5217c213690156c8496b6282573cad24863cf9cd5950caa20f2db1126"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "234bbab8baa73b28839e7f48cbea9d48c44d1a705127d68113240f8165c48f5a"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "62bb1cd476603545fd60a0206d1e9c7d5c1bdd87025c9a46f5e6edf71dcf2d1e"

      def install
        bin.install "ize"
      end
    end
  end

  test do
    system "#{bin}/ize"
  end
end
