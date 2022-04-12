# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ize040 < Formula
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra"
  homepage "https://ize.sh/"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.4.0/ize_0.4.0_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "57b10434d72ff70e01a7380b7aedcd4b1663e155a498f2d8d6edd1eeb1035138"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hazelops/ize/releases/download/0.4.0/ize_0.4.0_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "592dcdfbe4aac1f8d12d476db9b49f062b7b78fc30d10b1f14b1132da4f069b4"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.4.0/ize_0.4.0_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "09d4da1ddcc932586b5a0421b3b333fbd039b9e841830d11c3074a115d98fd2c"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/0.4.0/ize_0.4.0_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "cad03c2f29caf351adabe41a217f276115bf6fcafd5f5f6599741d0002d72fde"

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
