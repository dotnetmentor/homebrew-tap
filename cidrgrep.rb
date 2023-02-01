# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cidrgrep < Formula
  desc "like grep but for IP/CIDR matching"
  homepage "https://github.com/dotnetmentor/cidrgrep"
  version "0.2.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dotnetmentor/cidrgrep/releases/download/v0.2.0/cidrgrep_v0.2.0_darwin_arm64.zip"
      sha256 "4a383e137d60bd6b4d0f23cc2685608c39e2ab7cdcfc3cd5ba379bb76528c76a"

      def install
        bin.install 'cidrgrep'
        output = Utils.safe_popen_read("#{bin}/cidrgrep", 'completion', 'bash')
        (bash_completion/'cidrgrep').write output
        output = Utils.safe_popen_read("#{bin}/cidrgrep", 'completion', 'zsh')
        (zsh_completion/'_cidrgrep').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dotnetmentor/cidrgrep/releases/download/v0.2.0/cidrgrep_v0.2.0_darwin_amd64.zip"
      sha256 "8af32d5d204c1007ea8e04fc4e82c379e976f51bc21674ed125a447585c9a9e5"

      def install
        bin.install 'cidrgrep'
        output = Utils.safe_popen_read("#{bin}/cidrgrep", 'completion', 'bash')
        (bash_completion/'cidrgrep').write output
        output = Utils.safe_popen_read("#{bin}/cidrgrep", 'completion', 'zsh')
        (zsh_completion/'_cidrgrep').write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dotnetmentor/cidrgrep/releases/download/v0.2.0/cidrgrep_v0.2.0_linux_arm64.tar.gz"
      sha256 "2191245dae50e826de7ec649a115c0e9ef83fed560757396ad42253db7ddf98f"

      def install
        bin.install 'cidrgrep'
        output = Utils.safe_popen_read("#{bin}/cidrgrep", 'completion', 'bash')
        (bash_completion/'cidrgrep').write output
        output = Utils.safe_popen_read("#{bin}/cidrgrep", 'completion', 'zsh')
        (zsh_completion/'_cidrgrep').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dotnetmentor/cidrgrep/releases/download/v0.2.0/cidrgrep_v0.2.0_linux_amd64.tar.gz"
      sha256 "9aed84d78dcca1e4e74438aca7c48a8d50ce38300059e5aa820924c82af675ce"

      def install
        bin.install 'cidrgrep'
        output = Utils.safe_popen_read("#{bin}/cidrgrep", 'completion', 'bash')
        (bash_completion/'cidrgrep').write output
        output = Utils.safe_popen_read("#{bin}/cidrgrep", 'completion', 'zsh')
        (zsh_completion/'_cidrgrep').write output
      end
    end
  end
end
