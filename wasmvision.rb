class Wasmvision < Formula
    desc "wasmVision gets you up and running with computer vision."
    homepage "https://wasmvision.com/"
    version "0.1.0-beta1"

    depends_on "opencv"
  
    on_macos do
        on_arm do
            url "https://github.com/wasmvision/wasmvision/releases/download/v#{version}/wasmvision-macos-arm64.tar.gz"
            sha256 "ab8c111117259ff1c74edd7ac3bf99bdd7be562e6d3b8f284a730c0af20cace1"
        end
        on_intel do
            odie "wasmVision homebrew installer does not currently support macOS on Intel processors."
        end
    end

    def install
        libexec.install "bin/wasmvision"
    end
  
    test do
        system "#{bin}/wasmvision", "version"
    end
end
  