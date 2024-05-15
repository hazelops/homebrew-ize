# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IzeDev < Formula
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra"
  homepage "https://ize.sh/"
  version "0.0.0-dev"
  license "Apache 2.0"

  on_macos do
    on_intel do
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dd2daf64760a2afb2df2baa2a2e9c4ee91c14e0d3a403203b973ef088043ee2f"

      def install
        bin.install "ize"
      end
    end
    on_arm do
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a7fb2fbac1e4b2c23112ed0945f695c3667a163e88a7a68f508cf9d541e272fc"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "21bb164e4f33a70397e31f57bf4d72ad6ca427178b45b6adea3901d705a3cb99"

        def install
          bin.install "ize"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "eca013e26e66fcb0324b0c3fd944083fcfffb14ce85f0a1ec8435dc45357d810"

        def install
          bin.install "ize"
        end
      end
    end
  end

  conflicts_with "ize"

  test do
    system "#{bin}/ize"
  end
end
