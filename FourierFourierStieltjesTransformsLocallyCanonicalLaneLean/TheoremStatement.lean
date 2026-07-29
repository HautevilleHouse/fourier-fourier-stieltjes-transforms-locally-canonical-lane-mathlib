import HautevilleHouse.FourierFourierStieltjesTransformsLocallyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FourierFourierStieltjesTransformsLocallyCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  locallyCompactAbelianStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "fourier-fourier-stieltjes-transforms-locally-canonical-lane"
    theoremName := "Fourier Fourier-Stieltjes Transforms Locally"
    theoremObject := "Fourier and Fourier-Stieltjes transform theorems for locally compact abelian groups"
    classicalBoundary := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
    locallyCompactAbelianStatement := "locally compact abelian group transforms: Fourier transform defined on L^1, Fourier-Stieltjes transform defined on measures"
    certificateLane := "locally_compact_abelian_constrained"
    carriedRemainder := "classical analysis of Fourier and Fourier-Stieltjes transforms on general locally compact abelian groups"
  }

end FourierFourierStieltjesTransformsLocallyCanonicalLaneLean
end HautevilleHouse