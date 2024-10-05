class Wasmvision < Formula
    desc "wasmVision gets you up and running with computer vision."
    homepage "https://wasmvision.com/"
    version "0.1.0-pre5"

    depends_on "opencv"
  
    on_macos do
        on_arm do
            url "https://github.com/wasmvision/wasmvision/releases/download/v#{version}/wasmvision-macos-arm64.tar.gz"
            sha256 "f92a07b8e511f47b359c806811968a6b1e8cf406bf5f14281488d4f250a9f148"
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
  