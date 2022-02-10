# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ize < Formula
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra"
  homepage "https://ize.sh/"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hazelops/ize/releases/download/0.1.4/ize_0.1.4_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "b56ba4b5cc6c0b4d4af1194e7e63ce4eaed2195218971b1dc8e03f84feb8b721"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.1.4/ize_0.1.4_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "f8ea49ae52a8b1f58ae3247501f7ad36186cde08d4cc6f746579636215d3e80f"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.1.4/ize_0.1.4_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "00d4361851ccd9f8a422856ef489126a725e73e8895134a2c6c9b4c4aca6c145"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/0.1.4/ize_0.1.4_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "c40f9d3a025170cba05ec82493dae5181fb8d1ada69eeffc3e8973920ecf314f"

      def install
        bin.install "ize"
      end
    end
  end

  test do
    system "#{bin}/ize"
  end
end
