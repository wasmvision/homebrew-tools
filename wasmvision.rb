class Wasmvision < Formula
    desc "wasmVisionwasmVision gets you up and running with computer vision."
    homepage "https://wasmvision.com/"
    version "0.1.0"

    depends_on "opencv"
  
    on_macos do
        on_arm do
            url "https://github.com/wasmvision/wasmvision/releases/download/v#{version}/wasmvision#{version}.darwin-arm64.tar.gz"
            sha256 "REALSHAHERE"
        end
    end

    def install
        libexec.install "bin/wasmvision"
    end
  
    test do
        system "#{bin}/wasmvision", "about"
    end
end
  