# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rq < Formula
  desc "Resource Query cli"
  homepage "https://github.com/dotnetmentor/rq"
  version "0.2.2"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dotnetmentor/rq/releases/download/v0.2.2/rq_v0.2.2_darwin_arm64.zip"
      sha256 "1c67bbade15902d5ff3c0148fdd0afc310cd51a475d562d2d73c476aefe3a20e"

      def install
        bin.install 'rq'
        output = Utils.safe_popen_read("#{bin}/rq", 'completion', 'bash')
        (bash_completion/'rq').write output
        output = Utils.safe_popen_read("#{bin}/rq", 'completion', 'zsh')
        (zsh_completion/'_rq').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dotnetmentor/rq/releases/download/v0.2.2/rq_v0.2.2_darwin_amd64.zip"
      sha256 "47c62eb62463285e5f801e75cf6292f86d268c47be96b8d380ce17de8cfefcaf"

      def install
        bin.install 'rq'
        output = Utils.safe_popen_read("#{bin}/rq", 'completion', 'bash')
        (bash_completion/'rq').write output
        output = Utils.safe_popen_read("#{bin}/rq", 'completion', 'zsh')
        (zsh_completion/'_rq').write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dotnetmentor/rq/releases/download/v0.2.2/rq_v0.2.2_linux_arm64.tar.gz"
      sha256 "78347f49dc1d9134a8ed4cb3bc905213e0312ef14d5812b0a868d78f06c23443"

      def install
        bin.install 'rq'
        output = Utils.safe_popen_read("#{bin}/rq", 'completion', 'bash')
        (bash_completion/'rq').write output
        output = Utils.safe_popen_read("#{bin}/rq", 'completion', 'zsh')
        (zsh_completion/'_rq').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dotnetmentor/rq/releases/download/v0.2.2/rq_v0.2.2_linux_amd64.tar.gz"
      sha256 "13f89c7c86933c341cf4d2bf404c2c6cec0d157db1a78f16a6500e21c1a19d97"

      def install
        bin.install 'rq'
        output = Utils.safe_popen_read("#{bin}/rq", 'completion', 'bash')
        (bash_completion/'rq').write output
        output = Utils.safe_popen_read("#{bin}/rq", 'completion', 'zsh')
        (zsh_completion/'_rq').write output
      end
    end
  end
end
