# typed: false
# frozen_string_literal: true

class FluxAT24 < Formula
  desc "Flux CLI"
  homepage "https://fluxcd.io/"
  version "2.4.0"

  on_macos do
    on_intel do
      url "https://github.com/fluxcd/flux2/releases/download/v2.4.0/flux_2.4.0_darwin_amd64.tar.gz"
      sha256 "aa7ae3666980d8255722133a1a9bf88c62a72c182581b36e17c3e05cc350f561"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
    on_arm do
      url "https://github.com/fluxcd/flux2/releases/download/v2.4.0/flux_2.4.0_darwin_arm64.tar.gz"
      sha256 "d7c0595f7faa4b796da40e7d9b324dedb65ba67fb27e7101478bba47d0e05b32"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fluxcd/flux2/releases/download/v2.4.0/flux_2.4.0_linux_amd64.tar.gz"
        sha256 "7b70b75af20e28fc30ee66cf5372ec8d51dd466fd2ee21aa42690984de70b09b"

        def install
          bin.install "flux"

          generate_completions_from_executable(bin/"flux", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fluxcd/flux2/releases/download/v2.4.0/flux_2.4.0_linux_arm64.tar.gz"
        sha256 "4b8c95a1e8ad262dd33a67d28e22979cf3e022a9283d4676763b6728247d92a0"

        def install
          bin.install "flux"

          generate_completions_from_executable(bin/"flux", "completion")
        end
      end
    end
  end

  test do
    system "#{bin}/flux --version"
  end
end
