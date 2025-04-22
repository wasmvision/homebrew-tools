class Wasmvision < Formula
    desc "wasmVision gets you up and running with computer vision using WebAssembly."
    homepage "http://wasmvision.com/"
    version "0.4.0"
  
    on_macos do
        on_arm do
            depends_on "opencv"

            url "https://github.com/wasmvision/wasmvision/releases/download/v#{version}/wasmvision-macos-arm64.tar.gz"
            sha256 "025a3ac8204c73b149aa36f4abe46dd65747a5fa3095e17f1f89cd945e67db37"
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
  