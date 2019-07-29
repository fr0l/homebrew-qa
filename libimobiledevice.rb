class Libimobiledevice < Formula
  desc "Library to communicate with iOS devices natively"
  homepage "https://www.libimobiledevice.org/"
  url "https://github.com/badoo/libimobiledevice/archive/8ce3312.tar.gz"
  sha256 "daddc2a86a8cfb1b9a3ce552953fcd98d609aff4e6907b43ef634e45aee67eed"
  version "HEAD-8ce3312"

  # bottle do
  #   root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
  #   cellar :any
  #   sha256 "8e253191b12dda7d771558c102e97f0970b856a98c788ef0accf9168c4230507" => :mojave
  # end

  head do
    url "https://github.com/badoo/libimobiledevice.git"
    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
    depends_on "libxml2"
  end

  depends_on "pkg-config" => :build
  depends_on "libplist"
  depends_on "libtasn1"
  depends_on "openssl"
  depends_on "usbmuxd"

  def install
    system "./autogen.sh" if build.head?
    system "./configure", "--disable-dependency-tracking",
           "--disable-silent-rules",
           "--prefix=#{prefix}",
           # As long as libplist builds without Cython
           # bindings, libimobiledevice must as well.
           "--without-cython",
           "--enable-debug-code"
    system "make", "install"
  end

  test do
    system "#{bin}/idevicedate", "--help"
  end
end