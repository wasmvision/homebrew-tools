class Wasmvision < Formula
    desc "wasmVision gets you up and running with computer vision using WebAssembly."
    homepage "http://wasmvision.com/"
    version "0.3.1"
  
    on_macos do
        on_arm do
            depends_on "opencv"

            url "https://github.com/wasmvision/wasmvision/releases/download/v#{version}/wasmvision-macos-arm64.tar.gz"
            sha256 "5c02c68ce715b7a6789e7622856c698fc7537ee9a699f942192f799c55a67b11"
        end
        on_intel do
            odie "wasmVision homebrew installer does not currently support macOS on Intel processors. You can however install from source. Go to https://github.com/wasmvision/wasmvision/blob/main/docs/development.md"
        end
    end

    def install
        libexec.install "wasmvision"
        bin.install_symlink libexec/"wasmvision"
    end
end
  