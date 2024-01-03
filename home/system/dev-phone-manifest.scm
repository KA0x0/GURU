;; This "manifest" file can be passed to 'guix package -m' to reproduce
;; the content of your profile.  This is "symbolic": it only specifies
;; package names.  To reproduce the exact same profile, you also need to
;; capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

;;; Code:

(specifications->manifest
  (list "adb"
        "binutils"
        "blender"
        "emacs-bluetooth"
        "ccid"
        "curl"
        "diffoscope"
        "direnv"
        "elfutils"
        "my-emacs-next"
        "emacs-envrc"
        "emacs-emms"
        "emacs-hyperbole"
        "emacs-jabber"
        "emacs-marginalia"
        "emacs-modbus"
        "emacs-modus-themes"
        "emacs-notmuch"
        "emacs-verb"
        "emacs-x509-mode"
        "emacs-yasnippet"
        "ffmpeg"
        "file"
        "font-fira-code"
        "freerdp"
        "gdb"
        "gnuradio"
        "google-cloud-sdk"
        "graphviz"
        "guile-aws"
        "imagemagick"
        "mpd"
        "mpv"
        "openssh"
        "openvpn"
        "patch"
        "patchelf"
        "podman"
        "podman-compose"
        "pwntools"
        "python-ipython"
        "python-scapy"
        "qemu"
        "socat"
        "sshfs"
        "tesseract-ocr"
        "tiled"
        "upx"
        "valgrind"
        "wireguard-tools"
        "xclip"
        "emacs-xclip"
        "yt-dlp"))

;;; dev-phone-manifest.scm ends here
