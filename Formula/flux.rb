# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flux < Formula
  desc "Flux CLI"
  homepage "https://toolkit.fluxcd.io/"
  version "0.10.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluxcd/flux2/releases/download/v0.10.0/flux_0.10.0_darwin_amd64.tar.gz"
    sha256 "f0e532ebca2272ab59b6fda481137f9496ee5568e9cd3ffa5269e4ac912d6b3a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluxcd/flux2/releases/download/v0.10.0/flux_0.10.0_darwin_arm64.tar.gz"
    sha256 "f3f7495e52e7c08b12871ffd358b355b830bc61936724a03825c751c4ce06845"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluxcd/flux2/releases/download/v0.10.0/flux_0.10.0_linux_amd64.tar.gz"
    sha256 "9950a196ec671939a11b42d5b40dfaeb423e5be76500292382361d225269afe9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/fluxcd/flux2/releases/download/v0.10.0/flux_0.10.0_linux_arm64.tar.gz"
    sha256 "b477c76eeaad600bbbae6f3db72e0ede9d36b7fb490196eaf109ce41e965c6be"
  end

  depends_on "kubectl" => :optional

  def install
    bin.install "flux"
  end

  test do
    system "#{bin}/flux --version"
  end
end
