module Paths_ppTwoTwo (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,1,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/brandonshimanek/Documents/Haskell_Workspaces/LYHGG/Learn_Haskell/pp2/ppTwoTwo/.stack-work/install/x86_64-osx/lts-2.18/7.8.4/bin"
libdir     = "/Users/brandonshimanek/Documents/Haskell_Workspaces/LYHGG/Learn_Haskell/pp2/ppTwoTwo/.stack-work/install/x86_64-osx/lts-2.18/7.8.4/lib/x86_64-osx-ghc-7.8.4/ppTwoTwo-0.1.0.0"
datadir    = "/Users/brandonshimanek/Documents/Haskell_Workspaces/LYHGG/Learn_Haskell/pp2/ppTwoTwo/.stack-work/install/x86_64-osx/lts-2.18/7.8.4/share/x86_64-osx-ghc-7.8.4/ppTwoTwo-0.1.0.0"
libexecdir = "/Users/brandonshimanek/Documents/Haskell_Workspaces/LYHGG/Learn_Haskell/pp2/ppTwoTwo/.stack-work/install/x86_64-osx/lts-2.18/7.8.4/libexec"
sysconfdir = "/Users/brandonshimanek/Documents/Haskell_Workspaces/LYHGG/Learn_Haskell/pp2/ppTwoTwo/.stack-work/install/x86_64-osx/lts-2.18/7.8.4/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "ppTwoTwo_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "ppTwoTwo_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "ppTwoTwo_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "ppTwoTwo_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "ppTwoTwo_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
