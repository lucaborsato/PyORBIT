from pyorbit.classes.common import *
from pyorbit.classes.model_container_abstract import ModelContainer


class ModelContainerDynesty(ModelContainer):

    def __init__(self):
        super(self.__class__, self).__init__()

        # Default values, taken from the PyPolyChord wrapper in PolyChord official distribution, V1.9
        self.include_priors = False
        self.nested_sampling_parameters = {'shutdown_jitter': False,
                                     'include_priors': False}

        self.output_directory = None

    def dynesty_priors(self, cube):
        theta = np.zeros(len(cube), dtype=np.double)

        for i in range(0, len(cube)):
            theta[i] = nested_sampling_prior_compute(cube[i], self.priors[i][0], self.priors[i][2], self.spaces[i])
        return theta

    def dynesty_call(self, theta):

        chi_out = self(theta, self.include_priors)

        if chi_out < -0.5e10:
            return -0.5e10
        return chi_out