# typed: false
# frozen_string_literal: true

class Fbsimctl < Formula
  desc "Powerful Command-line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/71a72b0.tar.gz"
  version "HEAD-71a72b0"
  sha256 "7f8369b774d3e93142259a386c3f1ea54514f49cec0c11df8ced57750e50a6ea"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    sha256 cellar: :any_skip_relocation, catalina: "310318779373d0af294b2ecd819efe99f9e96d498427ee8feb2c2a3c1c62bc37"
    sha256 cellar: :any_skip_relocation, big_sur:  "310318779373d0af294b2ecd819efe99f9e96d498427ee8feb2c2a3c1c62bc37"
    sha256 cellar: :any_skip_relocation, monterey:   "310318779373d0af294b2ecd819efe99f9e96d498427ee8feb2c2a3c1c62bc37"
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
