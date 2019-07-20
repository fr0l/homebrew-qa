class Usbmuxd < Formula
  desc "USB multiplexor daemon for iPhone and iPod Touch devices"
  homepage "https://www.libimobiledevice.org/"
  revision 1

  stable do
    url "https://www.libimobiledevice.org/downloads/libusbmuxd-1.0.10.tar.bz2"
    sha256 "1aa21391265d2284ac3ccb7cf278126d10d354878589905b35e8102104fec9f2"
    version "HEAD-6539b02"

    # Backport of upstream security fix for CVE-2016-5104.
    patch do
      url "https://github.com/libimobiledevice/libusbmuxd/commit/4397b3376dc4.patch?full_index=1"
      sha256 "b28e17c82dc11320741d33cf68fd78e1baec9e4133f5265b944f167839cbe9bb"
    end
  end

  bottle do
    root_url "https://github.com/fr0l/homebrew-qa/releases/download/usbmuxd-badoo"
    cellar :any
    sha256 "09fa606479b1e7b2b98d29f6a84db7442b17cf189ca9203497e3960d21875124" => :mojave # Badoo build HEAD-6539b02_1
  end

  head do
    url "https://git.sukimashita.com/libusbmuxd.git"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  depends_on "pkg-config" => :build
  depends_on "libplist"
  depends_on "libusb"

  def install
    system "./autogen.sh" if build.head?
    system "./configure", "--disable-dependency-tracking",
           "--disable-silent-rules",
           "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system bin/"iproxy"
  end
end