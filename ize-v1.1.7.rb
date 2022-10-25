# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Izev117 < Formula
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra"
  homepage "https://ize.sh/"
  version "1.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/v1.1.7/ize_1.1.7_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3e39bfccd767298bd8c205a19fa410ddc7238ff21ca97164fa9d2c4380ede8c8"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hazelops/ize/releases/download/v1.1.7/ize_1.1.7_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "25b8db09d1eac06fc447d419112dd18b66778683bdbbb6748d659fca6924a4ad"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/v1.1.7/ize_1.1.7_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7f4c5381d726e664bbecd9fd433a71f59889d202d788ed0a4986f96c43346150"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/v1.1.7/ize_1.1.7_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9e4dc65dee4358fb0899ce8099650f72a30e856bfc4198e251c1ceb5fedb26c8"

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
