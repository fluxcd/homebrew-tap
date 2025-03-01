# typed: false
# frozen_string_literal: true

class FluxAT23 < Formula
  desc "Flux CLI"
  homepage "https://fluxcd.io/"
  version "2.3.0"

  on_macos do
    on_intel do
      url "https://github.com/fluxcd/flux2/releases/download/v2.3.0/flux_2.3.0_darwin_amd64.tar.gz"
      sha256 "54e23e5190c45e12c737b7cfedff344b5f3b2bec818dc23f50d73318a3a23edf"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
    on_arm do
      url "https://github.com/fluxcd/flux2/releases/download/v2.3.0/flux_2.3.0_darwin_arm64.tar.gz"
      sha256 "648a9c4ee2bdb9f810a1a552811154c1a5fecdd8c0068988af12d9d1093732e2"

      def install
        bin.install "flux"

        generate_completions_from_executable(bin/"flux", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fluxcd/flux2/releases/download/v2.3.0/flux_2.3.0_linux_amd64.tar.gz"
        sha256 "51ef10a0ebf2078e52476c4d168200a1db73feef987e0bc8722f4ce4fcd4b6d9"

        def install
          bin.install "flux"

          generate_completions_from_executable(bin/"flux", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fluxcd/flux2/releases/download/v2.3.0/flux_2.3.0_linux_arm64.tar.gz"
        sha256 "29d2363cfdf13546d900986d265f336ed18c6bbb12d0530c624eaa2ff27b547e"

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
