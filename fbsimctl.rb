class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/99606df.tar.gz"
  sha256 "0a9f65a774f9e94b34bcba1f44216643459af236449e3274fa0fbfd1f34e0e4f"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-99606df"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "aa298d00002cde2c108db309a97a16ffb807545d87086417b9c155dc213a875f" => :mojave
    sha256 "aa298d00002cde2c108db309a97a16ffb807545d87086417b9c155dc213a875f" => :high_sierra
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

