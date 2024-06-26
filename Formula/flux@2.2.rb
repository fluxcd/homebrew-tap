# typed: false
# frozen_string_literal: true

class FluxAT22 < Formula
  desc "Flux CLI"
  homepage "https://fluxcd.io/"
  version "2.2.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v2.2.3/flux_2.2.3_darwin_amd64.tar.gz"
      sha256 "6744f556ca0a0f0e672dc881e5e33c042f9fde05c7bae1e51291d6898bcc0757"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fluxcd/flux2/releases/download/v2.2.3/flux_2.2.3_darwin_arm64.tar.gz"
      sha256 "2529fb5ebb810ce6666262356e29398282a7a766df4e7e95ca93a40fb802f452"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fluxcd/flux2/releases/download/v2.2.3/flux_2.2.3_linux_arm64.tar.gz"
      sha256 "a8dcf688296aedec3225fb2c183c9e2ce3bda26788d10f9d01ddb7bdb5b55288"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v2.2.3/flux_2.2.3_linux_amd64.tar.gz"
      sha256 "9a705df552df5ac638f93d7fc43d9d8cda6a78f01a16736ae6f355f4a84ebdb3"

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
