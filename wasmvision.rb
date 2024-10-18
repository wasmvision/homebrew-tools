class Wasmvision < Formula
    desc "wasmVision gets you up and running with computer vision."
    homepage "https://wasmvision.com/"
    version "0.1.0-beta2"

    depends_on "opencv"
  
    on_macos do
        on_arm do
            url "https://github.com/wasmvision/wasmvision/releases/download/v#{version}/wasmvision-macos-arm64.tar.gz"
            sha256 "35ed65926bef12ebd37a1ef789e3157059756e9009812fadc4f3c3fcbeb56d37"
        end
        on_intel do
            odie "wasmVision homebrew installer does not currently support macOS on Intel processors."
        end
    end

    def install
        bin.install "wasmvision"
    end
  
    test do
        system "#{bin}/wasmvision", "version"
    end
end
  