# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flux < Formula
  desc "Flux CLI"
  homepage "https://fluxcd.io/"
  version "0.35.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fluxcd/flux2/releases/download/v0.35.0/flux_0.35.0_darwin_arm64.tar.gz"
      sha256 "1ec0af5a8b5db6d36c2cb113992e3228e45eed75c94fc7440459cdf19922b11a"

      def install
        bin.install "flux"

        bash_output = Utils.safe_popen_read(bin/"flux", "completion", "bash")
        (bash_completion/"flux").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"flux", "completion", "zsh")
        (zsh_completion/"_flux").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"flux", "completion", "fish")
        (fish_completion/"flux.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v0.35.0/flux_0.35.0_darwin_amd64.tar.gz"
      sha256 "16cb3e91423c238b2379942a6e2047f1e66415bd2e2110a497a6dcf5743335d4"

      def install
        bin.install "flux"

        bash_output = Utils.safe_popen_read(bin/"flux", "completion", "bash")
        (bash_completion/"flux").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"flux", "completion", "zsh")
        (zsh_completion/"_flux").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"flux", "completion", "fish")
        (fish_completion/"flux.fish").write fish_output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v0.35.0/flux_0.35.0_linux_amd64.tar.gz"
      sha256 "e45b99be8a19df2784257d06256ce8f7a3581fe6232c6de0b51c0e4c9dcacb44"

      def install
        bin.install "flux"

        bash_output = Utils.safe_popen_read(bin/"flux", "completion", "bash")
        (bash_completion/"flux").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"flux", "completion", "zsh")
        (zsh_completion/"_flux").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"flux", "completion", "fish")
        (fish_completion/"flux.fish").write fish_output
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fluxcd/flux2/releases/download/v0.35.0/flux_0.35.0_linux_arm64.tar.gz"
      sha256 "68f0865e28fafb143e39ab764cca9c777fc029cee36cb7906db23ba6b0e3e529"

      def install
        bin.install "flux"

        bash_output = Utils.safe_popen_read(bin/"flux", "completion", "bash")
        (bash_completion/"flux").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"flux", "completion", "zsh")
        (zsh_completion/"_flux").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"flux", "completion", "fish")
        (fish_completion/"flux.fish").write fish_output
      end
    end
  end

  test do
    system "#{bin}/flux --version"
  end
end
