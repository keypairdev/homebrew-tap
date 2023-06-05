# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Keypair < Formula
  desc ""
  homepage "https://keypair.com"
  version "0.0.18"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://keypair.com/download/v0.0.18/keypair_0.0.18_darwin_arm64.tar.gz"
      sha256 "fa0d8e173cf13fe66da6affe58ee142eb053dc257174d5e999c7274fc9c1419e"

      def install
        bin.install "keypair"
      end
    end
    if Hardware::CPU.intel?
      url "https://keypair.com/download/v0.0.18/keypair_0.0.18_darwin_amd64.tar.gz"
      sha256 "cb9f6df25c497f7c7cd59e6a8ed6454f5f47a53d77e83cd44734c9f228ae54ad"

      def install
        bin.install "keypair"
      end
    end
  end

  service do
    run [opt_bin/"keypair", "start"]
    keep_alive true
    log_path "#{var}/log/keypair.log"
    error_log_path "#{var}/log/keypair.log"
  end
end
