# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flux < Formula
  desc "Flux CLI"
  homepage "https://fluxcd.io/"
  version "0.15.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v0.15.2/flux_0.15.2_darwin_amd64.tar.gz"
      sha256 "6fa5ba372b81488a6bb42cb5d8c0926ec0216710821b528d201e68b240d8e82d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fluxcd/flux2/releases/download/v0.15.2/flux_0.15.2_darwin_arm64.tar.gz"
      sha256 "1b89cd43aae3dd82f5162e72b33c080a7825e02cf87f120f4161091d3a2208f0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v0.15.2/flux_0.15.2_linux_amd64.tar.gz"
      sha256 "b13d801005cea27fb8255a8323d72505bb0b59265622c680c112d48d26a7fcec"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fluxcd/flux2/releases/download/v0.15.2/flux_0.15.2_linux_arm64.tar.gz"
      sha256 "80c74d4d735f56cad4716aee7d21fe7787a2696b35e5a6e6fe8b5e0d1220f901"
    end
  end

  depends_on "kubectl" => :optional

  def install
    bin.install "flux"
  end

  test do
    system "#{bin}/flux --version"
  end
end
