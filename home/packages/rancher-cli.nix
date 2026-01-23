{
  fetchFromGitHub,
  buildGoModule,
}:
buildGoModule rec {
  pname = "rancher-cli";
  version = "2.13.1";

  src = fetchFromGitHub {
    owner = "rancher";
    repo = "cli";
    rev = "4584728f78deafc7480186114387078edfe4edc9";
    sha256 = "sha256-s7nt3A2VO23hN3EplB2Df3JvIqENwikexJXjOFr5BKo=";
  };

  vendorHash = "sha256-YeWy8JPd1YkLkE56ckvpg4Z35F5U9wcKQC1N+diNQsA=";

  postInstall = ''
    mv $out/bin/cli $out/bin/rancher
  '';
}
