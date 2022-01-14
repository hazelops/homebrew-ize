# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ize < Formula
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra"
  homepage "https://ize.sh/"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hazelops/ize/releases/download/0.1.2/ize_0.1.2_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "3fffc8466e817fc46aaa0675de9dfb2ba0f38554698d0d1899fefaa08e533421"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.1.2/ize_0.1.2_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "671da9baf2448813556aa51099c02c062c0d5a329d4a63f7030ed580b016bbd9"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.1.2/ize_0.1.2_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "d801a3a83117c88736f5875f9744ae1f65e9ab64e63187530335a701881bd996"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/0.1.2/ize_0.1.2_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "e72aa268d810a5718eb1b0f4f90397ccb1db71f122645684c8e863c3c55b14aa"

      def install
        bin.install "ize"
      end
    end
  end

  test do
    system "#{bin}/ize"
  end
end
