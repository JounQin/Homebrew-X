require "language/node"

class Pnpm < Formula
  desc "📦🚀 Fast, disk space efficient package manager "
  homepage "https://pnpm.js.org"
  url "https://registry.npmjs.org/pnpm/-/pnpm-4.0.2.tgz"
  sha256 "6f9b5faa2db1c2957e759c853e1e82bfb81fd7d7183858b8e794fb446640a988"

  depends_on "node"

  def install
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/pnm", "init", "-y"
    assert_predicate testpath/"package.json", :exist?, "package.json must exist"
  end
end
