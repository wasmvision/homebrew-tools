class Wasmvision < Formula
    desc "wasmVision gets you up and running with computer vision."
    homepage "https://wasmvision.com/"
    version "0.1.0-pre4"

    depends_on "opencv"
  
    on_macos do
        on_arm do
            url "https://github.com/wasmvision/wasmvision/releases/download/v#{version}/wasmvision-macos-arm64.tar.gz"
            sha256 "037b5a6906d92c821b1a3e4c854e15a0a23b45df01a99c85118f6d76d11b78e8"
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
  