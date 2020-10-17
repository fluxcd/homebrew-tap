# This file was generated by GoReleaser. DO NOT EDIT.
class Gotk < Formula
  desc "GitOps Toolkit CLI"
  homepage "https://toolkit.fluxcd.io/"
  version "0.1.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/fluxcd/toolkit/releases/download/v0.1.7/gotk_0.1.7_darwin_amd64.tar.gz"
    sha256 "f3539491586573e5fc91d396c18e699cca45eb5f31f60abf1fc79b8a4a17f247"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/toolkit/releases/download/v0.1.7/gotk_0.1.7_linux_amd64.tar.gz"
      sha256 "6b95f91a1156c0fc29d65daa2e5514a2254ce3ff2a0050930b197846b6ab6472"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fluxcd/toolkit/releases/download/v0.1.7/gotk_0.1.7_linux_arm64.tar.gz"
        sha256 "f2a9e9bbde7197e11cc447930fff8c64cd217d4e6fd931612f11fa3ade285373"
      else
      end
    end
  end
  
  depends_on "kubectl" => :optional

  def install
    bin.install "gotk"
  end

  test do
    system "#{bin}/gotk --version"
  end
end
