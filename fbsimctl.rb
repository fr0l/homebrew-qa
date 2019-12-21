class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/a7c52ce.tar.gz"
  sha256 "fad6498b6974f4f2336b8526121de4820b576000751c0e08f7d6beaa61e8f752"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-a7c52ce"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "61419fd11a632b7a27ce331b1d8529e3a0ab3f8def8814bda52148d35f4919f3" => :catalina
    sha256 "61419fd11a632b7a27ce331b1d8529e3a0ab3f8def8814bda52148d35f4919f3" => :mojave
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

