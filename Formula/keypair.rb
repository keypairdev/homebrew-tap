# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Keypair < Formula
  desc ""
  homepage "https://github.com/keypairdev/keypair"
  version "0.0.14"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keypairdev/releases/raw/main/keypair_0.0.14_darwin_arm64.tar.gz"
      sha256 "89f58bb4ce7faec8acecb1866cdb8377934da554fbdd0bf8d433f29217b826a3"

      def install
        bin.install "keypair"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/keypairdev/releases/raw/main/keypair_0.0.14_darwin_amd64.tar.gz"
      sha256 "6f14b8da81d3744e1f077c56b62198159dbc5c7313ea41ba974f8cb9b5a7e3b4"

      def install
        bin.install "keypair"
      end
    end
  end

  service do
    run [opt_bin/"keypair", "server"]
    keep_alive true
    log_path "#{var}/log/keypair.log"
    error_log_path "#{var}/log/keypair.log"
  end
end
