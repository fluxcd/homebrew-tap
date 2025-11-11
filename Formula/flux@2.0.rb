# typed: false
# frozen_string_literal: true

class FluxAT20 < Formula
  desc "Flux CLI"
  homepage "https://fluxcd.io/"
  version "2.0.1"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v2.0.1/flux_2.0.1_darwin_amd64.tar.gz"
      sha256 "e1ee1b2ceda97fc1a497b70fd700275a72e05d23a25684962e1d7c7e1ac60cdb"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fluxcd/flux2/releases/download/v2.0.1/flux_2.0.1_darwin_arm64.tar.gz"
      sha256 "520f25324d42e222ccdc75009659452808adcbecb2b744f2ebf037e14e18cd69"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fluxcd/flux2/releases/download/v2.0.1/flux_2.0.1_linux_arm64.tar.gz"
      sha256 "efa801d345494b2e4595b73c336687b97413f40e42e8b769c65f98dfe5416e3b"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v2.0.1/flux_2.0.1_linux_amd64.tar.gz"
      sha256 "bff7a54421a591eaae0c13d1f7bd6420b289dd76d0642cb3701897c9d02c6df7"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
  end

  test do
    system "#{bin}/flux --version"
  end
end
