from pyorbit.models.abstract_common import *


class CommonActivity(AbstractCommon):

    model_class = 'activity'

    ''' all the possible parameters that can be assigned to a planet are listed here'''
    list_pams = {
        'Prot',  # Rotational period of the star
        'Pdec',  # Decay timescale of activity
        'Oamp',  # Granulation of activity
        'Hamp',  # Amplitude of the signal in the covariance matrix
        'Camo',  # Amplitude of the derivative of the kernel
        'Hamp_factor',
        'P',  # Period
        'K',  # Sinusoid semi-amplitude
        'f',  # Sinusoid curve phase
        'cel_factor',
        'cel_a',  # celerite term A
        'cel_b',  # celerite term B
        'cel_c',  # celerite term C
        'Vc',  # GP framework parameter
        'Vr',  # GP framework parameter
        'Lc',  # GP framework parameter
        'Bc',  # GP framework parameter
        'Br',  # GP framework parameter
    }

    """These default boundaries are used when the user does not define them in the yaml file"""
    default_bounds = {
        'Prot': [1.0, 1000.0],
        'Pdec': [1.0, 10000.0],
        'Oamp': [0.0001, 2.0],
        'Hamp': [0.00000001, 1000000.0],
        'Camp': [0.00000001, 1000000.0],
        'Hamp_factor': [0.01, 10.0],
        'P': [0.4, 100000.0],
        'K': [0.5, 2000.0],
        'f': [0.0, 2 * np.pi],
        'cel_B': [0.00000001, 1000000.0],
        'cel_C': [0.00000001, 1000000.0],
        'Vc': [-500.0, 500.0],  # Test boundaries
        'Vr': [-500.0, 500.0],  # Test boundaries
        'Lc': [-500.0, 500.0],  # Test boundaries
        'Bc': [-500.0, 500.0],  # Test boundaries
        'Br': [-500.0, 500.0],  # Test boundaries
    }

    """ These default priors are used when the user does not define them in the yaml file
        The boundaries are not included in this dictionary, because it is likely that the user will specify his
        preferred boundaries without changing the priors
    """
    default_priors = {
        'Prot': ['Uniform', []],
        'Pdec': ['Uniform', []],
        'Oamp': ['Uniform', []],
        'Hamp': ['Uniform', []],
        'Camp': ['Uniform', []],
        'Hamp_factor': ['Uniform', []],
        'P': ['Uniform', []],
        'K': ['Uniform', []],
        'f': ['Uniform', []],
        'cel_B': ['Uniform', []],
        'cel_C': ['Uniform', []],
        'Vc': ['Uniform', []],
        'Vr': ['Uniform', []],
        'Lc': ['Uniform', []],
        'Bc': ['Uniform', []],
        'Br': ['Uniform', []],
    }

    default_spaces = {
        'Prot': 'Linear',  # Rotational period of the star
        'Pdec': 'Linear',  # Decay timescale of activity
        'Oamp': 'Logarithmic',  # Granulation of activity
        'Hamp': 'Linear',  # Amplitude of the signal in the covariance matrix
        'Camp': 'Linear',  # Amplitude of the signal in the covariance matrix
        'Hamp_factor': 'Linear',
        'P': 'Logarithmic',  # Period, log-uniform prior
        'K': 'Logarithmic',  # RV semi-amplitude, log-uniform prior
        'f': 'Linear',  # RV curve phase, log-uniform
        'cel_factor': 'Linear',
        'cel_B': 'Logarithmic',  # celerite term B
        'cel_C': 'Logarithmic',  # celerite term C
        'Vc': 'Linear',
        'Vr': 'Linear',
        'Lc': 'Linear',
        'Bc': 'Linear',
        'Br': 'Linear',
    }

    default_fixed = {}

    recenter_pams = {'f'}
