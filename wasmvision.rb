class Wasmvision < Formula
    desc "wasmVision gets you up and running with computer vision."
    homepage "https://wasmvision.com/"
    version "0.1.0-pre2"

    depends_on "opencv"
  
    on_macos do
        on_arm do
            url "https://github.com/wasmvision/wasmvision/releases/download/v#{version}/wasmvision-macos-arm64.tar.gz"
            sha256 "2b77531c8a3a90dfea95bebf782b678546e0bb01dde9c87a6d795d7ec5f556b1"
        end
    end

    def install
        libexec.install "bin/wasmvision"
    end
  
    test do
        system "#{bin}/wasmvision", "version"
    end
end
  