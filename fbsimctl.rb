class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/08451d7.tar.gz"
  sha256 "2c650fd17664fb576c450c7b55c49832b19c9faf689d175aa524142b2d0a8b2c"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-08451d77"

  bottle do
    #root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    root_url "https://github.com/fr0l/homebrew-qa/releases/download/badoo/"
    #rebuild 5
    cellar :any_skip_relocation
    sha256 "d4d7609acd985baa73b0928f947bcb1e418a930b284a4e98a69a3d226341ce8b" => :mojave
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

