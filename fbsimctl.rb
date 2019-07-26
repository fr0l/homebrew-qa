class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/08451d7.tar.gz"
  sha256 "2c650fd17664fb576c450c7b55c49832b19c9faf689d175aa524142b2d0a8b2c"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-7dffa75"

  bottle do
    root_url "https://github.com/fr0l/homebrew-qa/releases/download/badoo/"
    rebuild 1
    cellar :any_skip_relocation
    sha256 "f2c9db203847c9fc8745f8f6578f83674b5ec37f2710c7f4175fd915f2ae19d1" => :mojave
  end

  depends_on "carthage"
  depends_on :xcode => ["10.0", :build]

  def install
    system "./build.sh", "fbsimctl", "build", prefix
  end

  pour_bottle? do
    true
  end

  test do
    system "fbsimctl", "list"
  end
end

