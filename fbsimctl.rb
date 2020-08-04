class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/ff11f80.tar.gz"
  sha256 "123da36702c37cdc777e354b28405f5c004dc1d9f42b7f8067480c09be95c96a"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-ff11f80"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "ef9636d9a5e1cc49acff1b3f3bed33283369f57f221a9fa8fecafbc022381d56" => :catalina
    sha256 "ef9636d9a5e1cc49acff1b3f3bed33283369f57f221a9fa8fecafbc022381d56" => :mojave
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

