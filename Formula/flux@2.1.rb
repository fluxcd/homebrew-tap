# typed: false
# frozen_string_literal: true

class FluxAT21 < Formula
  desc "Flux CLI"
  homepage "https://fluxcd.io/"
  version "2.1.2"

  keg_only :versioned_formula

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v2.1.2/flux_2.1.2_darwin_amd64.tar.gz"
      sha256 "4abd7dbdd72c1393a31742ea76b0d2207ddd7f186a3486ed6af8bed5ed322031"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fluxcd/flux2/releases/download/v2.1.2/flux_2.1.2_darwin_arm64.tar.gz"
      sha256 "e11a99846e0777596b33a22412cbc389c63ca22b1bab4e8ea29e735c3855c275"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v2.1.2/flux_2.1.2_linux_amd64.tar.gz"
      sha256 "61b360b50d6cfc34410730b1cebeb75f5eda2b484e47b9a083412f51ad56de68"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fluxcd/flux2/releases/download/v2.1.2/flux_2.1.2_linux_arm64.tar.gz"
      sha256 "c92ea535cc7a458c4153fbd167c2c00c49cb7d8ed41b8dfbecdbcb68a33d6a9c"

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
