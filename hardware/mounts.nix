{ lib, config, ... }:

let
  inherit (lib) mkIf;

  cfg = config.icedos.hardware;
  btrfsCompression = cfg.btrfs.compression;
in
mkIf (cfg.mounts) {
  fileSystems."/mnt/C" = {
    device = "/dev/disk/by-uuid/6C383F39383F021E";
    fsType = "ntfs";
  };

  fileSystems."/mnt/D" = {
    device = "/dev/disk/by-uuid/5cf83e52-be67-1c2a-a5f8-72c38068e1f0";
    fsType = "btrfs";
    options = mkIf (btrfsCompression.enable && btrfsCompression.mounts) [
      "compress=zstd"
      "x-systemd.automount"
      "noauto"
    ];
  };

  fileSystems."/mnt/HDD" = {
    device = "/dev/disk/by-uuid/42B629A5B6299B05";
    fsType = "ntfs";
  };

  # fileSystems."/mnt/HDDGames" = {
  #   device = "/dev/disk/by-uuid/e7e03cc8-e8fe-47e2-b48a-c6dbd1903112";
  #   fsType = "btrfs";
  #   options = mkIf (btrfsCompression.enable && btrfsCompression.mounts) [
  #     "compress=zstd"
  #     "x-systemd.automount"
  #     "noauto"
  #   ];
  # };

  # fileSystems."/mnt/Windows" = {
  #   device = "/dev/disk/by-uuid/3032AC4732AC13BE";
  #   fsType = "ntfs";
  # };
}
