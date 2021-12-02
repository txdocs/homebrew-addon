# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DocsAddonTools < Formula
  desc "插件开发工具"
  homepage ""
  url "https://cdn.addon.tencentsuite.com/addon-tools/beta/docs-addon-tools-macos-v0.3.1118.zip", :using => :curl
  sha256 "3fff9e66bceffc6d1234a9f07df0cdea43c86a96c81ead8b142c18c61e91af5f"
  license "Apache-2.0"
  
  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    # system "unzip", "docs-addon-tools-macos-v0.1.907.zip"
    bin.install "docs-addon-tools"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test homebrew-docs-addon-tools`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    # system "false"
  end
end
