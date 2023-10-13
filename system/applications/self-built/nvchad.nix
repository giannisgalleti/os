{ stdenvNoCC, fetchFromGitHub, ... }:

stdenvNoCC.mkDerivation rec {
  name = "nvchad";
  version = "2.0";

  src = fetchFromGitHub {
    owner = "NvChad";
    repo = "NvChad";
    rev = "refs/heads/v${version}";
    sha256 = "fliUVs7vNozCyMwA40iTCHYt5PXYPF8A0dUUxMkNYho=";
  };

  preferLocalBuild = true;

  installPhase = ''
    mkdir -p $out
    cp -r ./ $out
  '';
}
