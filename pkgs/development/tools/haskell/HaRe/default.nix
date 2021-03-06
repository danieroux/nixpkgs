{ cabal, cmdtheline, deepseq, Diff, filepath, ghcMod, ghcPaths
, ghcSybUtils, hslogger, hspec, HUnit, mtl, parsec, QuickCheck
, rosezipper, silently, StrafunskiStrategyLib, stringbuilder, syb
, syz, time, transformers
}:

cabal.mkDerivation (self: {
  pname = "HaRe";
  version = "0.7.0.1";
  sha256 = "1ykbyc6p71k6rs85vcsjgk47cxd2lda3iw78jzs0fx43qr1dywnl";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    cmdtheline filepath ghcMod ghcPaths ghcSybUtils hslogger mtl parsec
    rosezipper StrafunskiStrategyLib syb syz time transformers
  ];
  testDepends = [
    deepseq Diff filepath ghcMod ghcPaths ghcSybUtils hslogger hspec
    HUnit mtl QuickCheck rosezipper silently StrafunskiStrategyLib
    stringbuilder syb syz time transformers
  ];
  jailbreak = true;
  meta = {
    homepage = "http://www.cs.kent.ac.uk/projects/refactor-fp";
    description = "the Haskell Refactorer";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
