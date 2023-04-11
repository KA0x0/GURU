;; This "manifest" file can be passed to 'guix package -m' to reproduce
;; the content of your profile.  This is "symbolic": it only specifies
;; package names.  To reproduce the exact same profile, you also need to
;; capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

;;; Code:

(specifications->manifest
  (list "adb"
        "audacity"
        "awscli"
        "binutils"
        "blender"
        "emacs-bluetooth"
        "ccid"
        "curl"
        "diffoscope"
        "direnv"
        "elfutils"
        "my-emacs-next"
        "emacs-dirvish"
        "emacs-envrc"
        "emacs-emms"
        "emacs-exiftool"
        "emacs-jabber"
        "emacs-marginalia"
        "emacs-mentor"
        "emacs-modus-themes"
        "emacs-notmuch"
        "emacs-symon"
        "emacs-verb"
        "emacs-yasnippet"
        "fd"
        "ffmpeg"
        "ffmpegthumbnailer"
        "file"
        "font-fira-code"
        "freerdp"
        "gdb"
        "gimp"
        "google-cloud-sdk"
        "guile-aws"
        "ldns"
        "mediainfo"
        "mktorrent"
        "mpd"
        "mpv"
        "openssh"
        "openvpn"
        "patch"
        "patchelf"
        "podman"
        "emacs-powershell"
        "pwntools"
        "python-boto3"
        "python-ipython"
        "python-scapy"
        "qemu"
        "ripgrep"
        "socat"
        "sshfs"
        "tesseract-ocr"
        "tiled"
        "tpm2-tss"
        "upx"
        "valgrind"
        "wireguard-tools"
        "xclip"
        "emacs-xclip"
        "yt-dlp"))

;;; dev-phone-manifest.scm ends here
