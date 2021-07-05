# typed: false
# frozen_string_literal: true

class Fbsimctl < Formula
  desc "Powerful Command-line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/b6c1216.tar.gz"
  version "HEAD-b6c1216"
  sha256 "1135b44294dcc976419a92994b6683e783d192f47ac0964a7dd8631d38274432"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    sha256 cellar: :any_skip_relocation, big_sur:  "fb92723d0a1de4fbe5daafa6d7a1ddb1dfa65dab94562015c312b5f9a89ec2f8"
    sha256 cellar: :any_skip_relocation, catalina: "fb92723d0a1de4fbe5daafa6d7a1ddb1dfa65dab94562015c312b5f9a89ec2f8"
    sha256 cellar: :any_skip_relocation, monterey: "fb92723d0a1de4fbe5daafa6d7a1ddb1dfa65dab94562015c312b5f9a89ec2f8"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "143819ea2fc90ba390069b85a37aa5181822d3a4acda27b800ba4e45e5e1d8e3"
    sha256 cellar: :any_skip_relocation, arm64_catalina: "143819ea2fc90ba390069b85a37aa5181822d3a4acda27b800ba4e45e5e1d8e3"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "143819ea2fc90ba390069b85a37aa5181822d3a4acda27b800ba4e45e5e1d8e3"
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
