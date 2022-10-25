# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ize < Formula
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra"
  homepage "https://ize.sh/"
  version "1.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hazelops/ize/releases/download/v1.1.8/ize_1.1.8_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c01627f7fe774e25cbc490a6137e12a623d1e1b93dd805bd807380f31f7574df"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/v1.1.8/ize_1.1.8_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dbe1dcc742dce278ad772d452ed3d91ff1d3ed6e8c6fd0837607de40b29e71f9"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/v1.1.8/ize_1.1.8_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a424758a21cb81352f9f878c83eabb8e5e93a510f06980ff9dd1f1bdcb844015"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/v1.1.8/ize_1.1.8_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "836db1b95f24f4e845d3c7108c86ca66f0fcc2312bfd03de9f0c01899e9ac01d"

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
