# PyORBIT

## `PyORBIT` version 7.0 by Luca Malavolta - February 2019

**News** Starting with Version 7 it is now possible to fit planetary transits!
Testing is on-going
Refer to the 

**Warnings**
- The output files generated by this version are not retro-compatible (including files generated with version 7.0b), due to some modifications of the internal structure of the code
- Due to the different implementation of inclination and stellar parameters in Transit and RV Dynamical models, 
at the moment there could be problems when performing transit fit and dynamical modelling at the same time. Additionally, at the moment transit fit 
 does not include Transit Time Variations modelling (i.e., it's not a photodynamical model).
- GetResults needs to be fixed in the part of model extraction

**Documentation** Some incomplete documentation is available [here](http://pyorbit.readthedocs.io/). For any doubt, feel free to contact me at luca.malavolta_at_inaf.it, I'll be happy to work out together any problem that may arise during installation or usage of this software.

`PyORBIT` handles several kinds of datasets, such as radial velocity (RV), activity indexes, and photometry, to simultaneously characterize the orbital parameters of exoplanets and the noise induced by the activity of the host star. RV computation is performed using either non-interacting Kepler orbits or n-body integration. Stellar activity can be modeled either with sinusoids at the rotational period and its harmonics or gaussian process. Offsets and systematics in measurements from several instruments can be modeled as well. Thanks to the modular approach, new methods for stellar activity modeling or parameter estimation can be easily incorporated into the code.

**Models**
Any of these models can be applied to a dataset. The user can choose which models should be used for each dataset.
- `Gaussian Processes` for RV or photometry (shared or independent hyperparameter)
- `Polynomial trends` with user-defined order
- `Correlation` with activity indexes (or any other dataset)
- `Sinusoids` (independent or shared amplitudes and periods)
- `Celerite` support available (untested)

**Priors**
These priors can be applied to any of the parameters (it's up to the user to choice the appropriate ones):

- `Uniform` default prior for all the parameters
- `Gaussian`
- `Jeffreys`
- `Modified Jeffreys`
- `Truncated Rayleigh`
- `WhiteNoisePrior`
- `BetaDistribution`

`Jeffreys` and `Modified Jeffreys` priors are actually `Truncated Jeffreys` and `Truncated Modified Jeffreys`, with truncation defined by the boundaries of the parameter space.

**Parameter exploration**
The user can choice between `Linear` and `Logarithmic`. Note that in the second case the parameter space is transformed into base-2 logarithm.

Most of the information can be found in [Malavolta et al. (2016)](https://ui.adsabs.harvard.edu//#abs/2016A&A...588A.118M/abstract) and [Malavolta et al. (2018)](https://ui.adsabs.harvard.edu//#abs/2018AJ....155..107M/abstract).  
