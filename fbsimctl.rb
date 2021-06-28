# typed: false
# frozen_string_literal: true

class Fbsimctl < Formula
  desc "Powerful Command-line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/b6c1216.tar.gz"
  version "HEAD-b6c1216"
  sha256 "c3bd9ccb2bc5d918ba17403f8bc4a9dd696c015a80da613dd8bf0cd6517c2e62"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    sha256 cellar: :any_skip_relocation, catalina: "fb92723d0a1de4fbe5daafa6d7a1ddb1dfa65dab94562015c312b5f9a89ec2f8"
    sha256 cellar: :any_skip_relocation, big_sur:  "fb92723d0a1de4fbe5daafa6d7a1ddb1dfa65dab94562015c312b5f9a89ec2f8"
  #    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "5b7e008fa974bd94758b07528efaa878b1daa5017ff19bce1fab93a111d3c0b2"
    sha256 cellar: :any_skip_relocation, monterey:  "fb92723d0a1de4fbe5daafa6d7a1ddb1dfa65dab94562015c312b5f9a89ec2f8"
  end

  pour_bottle? do
    true
  end

  def install
    raise("local builds are unsupported")
  end

  test do
    system "fbsimctl", "list"
  end
end
