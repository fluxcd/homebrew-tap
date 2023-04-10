# typed: false
# frozen_string_literal: true

class FluxAT041 < Formula
  desc "Flux CLI"
  homepage "https://fluxcd.io/"
  version "0.41.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v0.41.2/flux_0.41.2_darwin_amd64.tar.gz"
      sha256 "bba5d3e98c5e92ace0189493fb40491180b998d7a03093c91022b73a0e0c3883"

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
    if Hardware::CPU.arm?
      url "https://github.com/fluxcd/flux2/releases/download/v0.41.2/flux_0.41.2_darwin_arm64.tar.gz"
      sha256 "ea5a97c7eca727b7f3b63f3e05589f1b244fd38f1095644e9cde7378f78c0bbe"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fluxcd/flux2/releases/download/v0.41.2/flux_0.41.2_linux_arm64.tar.gz"
      sha256 "44ddca2cd9177b0529e10e6e1d978318bf61d9824def2318e9411dc3da9b89e1"

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
      url "https://github.com/fluxcd/flux2/releases/download/v0.41.2/flux_0.41.2_linux_amd64.tar.gz"
      sha256 "13f5ab2a93812c26c6b921274c40451d1b29a259da4e9c4d38b112cc4dad562a"

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
