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
      sha256 "a8d22b53482351e6cdbc384b24f52fa2d4095fea296d4aa2537c8960e4037e1b"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "03a6e5c63bbf30751c992afd516f54f997c885320fd916c69eee90a445c19fbe"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "10db5498d00043ce03bd4db1a0fc514447af960f1379134534ee1df0ec3ef27f"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "ceb069f490f6e896c0a1a776145bfaab426cd09fcde7ec5eff6e0c58bcda2386"

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
