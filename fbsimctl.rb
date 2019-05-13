class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/v1.5-badoo.tar.gz"
  sha256 "3f91784f331f29cb491e736197ec8ac1435a5b41b1dd1c469162e919487c350f"
  head "https://github.com/badoo/FBSimulatorControl.git"
  version "1.5-badoo"

  bottle do
    root_url "https://github.com/badoo/FBSimulatorControl/releases/download/v1.5-badoo"
    cellar :any
    sha256 "d9269f3a0c2dbc2c60810c99dad5a5a71176a647c40f1a28d995aab3869d3950" => :mojave
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
