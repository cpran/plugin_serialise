# Setup script for serialise
#
# This script is part of the serialise CPrAN plugin for Praat.
# The latest version is available through CPrAN or at
# <http://cpran.net/plugins/serialise>
#
# The serialise plugin is free software: you can redistribute it
# and/or modify it under the terms of the GNU General Public
# License as published by the Free Software Foundation, either
# version 3 of the License, or (at your option) any later version.
#
# The serialise plugin is distributed in the hope that it will be
# useful, but WITHOUT ANY WARRANTY; without even the implied warranty
# of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with serialise. If not, see <http://www.gnu.org/licenses/>.
#
# Copyright 2014, 2015 Jose Joaquin Atria

## Static commands:

# Base menu
nocheck Add menu command: "Objects", "Praat", "serialise", "CPrAN", 1, ""

# Formats menu
nocheck Add menu command: "Objects", "Praat", "Save as JSON...",        "serialise", 2, "scripts/save_as_json.praat"
nocheck Add menu command: "Objects", "Praat", "Save as YAML...",        "serialise", 2, "scripts/save_as_yaml.praat"
nocheck Add menu command: "Objects", "Praat", "Batch save as JSON...",  "serialise", 2, "scripts/batch_save_to_json.praat"

nocheck Add menu command: "Objects", "Open",  "Read from JSON/YAML...", "",          0, "scripts/deserialise.praat"

## Dynamic commands

# Data serialisation
nocheck Add action command: "Activation",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "ActivationList",          0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "AffineTransform",         0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "AmplitudeTier",           0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Art",                     0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Artword",                 0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Autosegment",             0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "BarkFilter",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "CCA",                     0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Categories",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Cepstrum",                0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Cepstrumc",               0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "ChebyshevSeries",         0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "ClassificationTable",     0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Cochleagram",             0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Collection",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Configuration",           0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Confusion",               0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "ContingencyTable",        0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Corpus",                  0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Correlation",             0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Covariance",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "CrossCorrelationTable",   0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "CrossCorrelationTables",  0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "DTW",                     0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Diagonalizer",            0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Discriminant",            0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Dissimilarity",           0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Distance",                0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Distributions",           0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "DurationTier",            0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "EEG",                     0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "ERP",                     0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "ERPTier",                 0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Eigen",                   0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Excitation",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Excitations",             0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "ExperimentMFC",           0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "FeatureWeights",          0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
if !(praatVersion >= 6001 and praatVersion < 6004)
  nocheck Add action command: "FFNet",                 0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
endif
nocheck Add action command: "Formant",                 0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "FormantFilter",           0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "FormantGrid",             0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "FormantPoint",            0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "FormantTier",             0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "GaussianMixture",         0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "HMM",                     0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "HMM_Observation",         0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "HMM_ObservationSequence", 0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "HMM_State",               0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "HMM_StateSequence",       0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "HMMObservation",          0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "HMMObservationSequence",  0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "HMMState",                0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "HMMStateSequence",        0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Harmonicity",             0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "ISpline",                 0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Index",                   0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Intensity",               0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "IntensityTier",           0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "IntervalTier",            0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "KNN",                     0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "KlattGrid",               0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "KlattTable",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "LFCC",                    0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "LPC",                     0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Label",                   0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "LegendreSeries",          0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "LinearRegression",        0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "LogisticRegression",      0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Ltas",                    0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "MFCC",                    0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "MSpline",                 0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "ManPages",                0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Manipulation",            0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Matrix",                  0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "MelFilter",               0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "MixingMatrix",            0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Movie",                   0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Network",                 0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "OTGrammar",               0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "OTHistory",               0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "OTMulti",                 0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "PCA",                     0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "PairDistribution",        0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "ParamCurve",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Pattern",                 0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "PatternList",             0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Permutation",             0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Pitch",                   0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "PitchTier",               0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "PointProcess",            0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Polygon",                 0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Polynomial",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Procrustes",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "RealPoint",               0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "RealTier",                0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "ResultsMFC",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Roots",                   0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "SPINET",                  0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "SSCP",                    0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "SVD",                     0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Salience",                0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "ScalarProduct",           0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Similarity",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "SimpleString",            0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "SortedSetOfString",       0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Sound",                   0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Speaker",                 0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Spectrogram",             0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Spectrum",                0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "SpectrumTier",            0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "SpeechSynthesizer",       0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "SpellingChecker",         0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Strings",                 0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "StringsIndex",            0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Table",                   0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "TableOfReal",             0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "TextGrid",                0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "TextInterval",            0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "TextPoint",               0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "TextTier",                0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Tier",                    0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Transition",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "VocalTract",              0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "Weight",                  0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"
nocheck Add action command: "WordList",                0, "", 0, "", 0, "Save as JSON...", "", 0, "scripts/save_as_json.praat"

nocheck Add action command: "Activation",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "AffineTransform",         0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "AmplitudeTier",           0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Art",                     0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Artword",                 0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Autosegment",             0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "BarkFilter",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "CCA",                     0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Categories",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Cepstrum",                0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Cepstrumc",               0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "ChebyshevSeries",         0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "ClassificationTable",     0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Cochleagram",             0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Collection",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Configuration",           0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Confusion",               0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "ContingencyTable",        0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Corpus",                  0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Correlation",             0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Covariance",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "CrossCorrelationTable",   0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "CrossCorrelationTables",  0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "DTW",                     0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Diagonalizer",            0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Discriminant",            0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Dissimilarity",           0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Distance",                0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Distributions",           0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "DurationTier",            0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "EEG",                     0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "ERP",                     0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "ERPTier",                 0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Eigen",                   0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Excitation",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Excitations",             0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "ExperimentMFC",           0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
if !(praatVersion >= 6001 and praatVersion < 6004)
  nocheck Add action command: "FFNet",                 0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
endif
nocheck Add action command: "FeatureWeights",          0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Formant",                 0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "FormantFilter",           0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "FormantGrid",             0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "FormantPoint",            0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "FormantTier",             0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "GaussianMixture",         0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "HMM",                     0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "HMM_Observation",         0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "HMM_ObservationSequence", 0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "HMM_State",               0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "HMM_StateSequence",       0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "HMMObservation",          0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "HMMObservationSequence",  0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "HMMState",                0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "HMMStateSequence",        0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Harmonicity",             0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "ISpline",                 0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Index",                   0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Intensity",               0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "IntensityTier",           0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "IntervalTier",            0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "KNN",                     0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "KlattGrid",               0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "KlattTable",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "LFCC",                    0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "LPC",                     0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Label",                   0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "LegendreSeries",          0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "LinearRegression",        0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "LogisticRegression",      0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Ltas",                    0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "MFCC",                    0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "MSpline",                 0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "ManPages",                0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Manipulation",            0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Matrix",                  0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "MelFilter",               0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "MixingMatrix",            0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Movie",                   0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Network",                 0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "OTGrammar",               0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "OTHistory",               0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "OTMulti",                 0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "PCA",                     0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "PairDistribution",        0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "ParamCurve",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Pattern",                 0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Permutation",             0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Pitch",                   0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "PitchTier",               0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "PointProcess",            0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Polygon",                 0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Polynomial",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Procrustes",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "RealPoint",               0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "RealTier",                0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "ResultsMFC",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Roots",                   0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "SPINET",                  0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "SSCP",                    0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "SVD",                     0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Salience",                0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "ScalarProduct",           0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Similarity",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "SimpleString",            0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "SortedSetOfString",       0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Sound",                   0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Speaker",                 0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Spectrogram",             0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Spectrum",                0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "SpectrumTier",            0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "SpeechSynthesizer",       0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "SpellingChecker",         0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Strings",                 0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "StringsIndex",            0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Table",                   0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "TableOfReal",             0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "TextGrid",                0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "TextInterval",            0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "TextPoint",               0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "TextTier",                0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Tier",                    0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Transition",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "VocalTract",              0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "Weight",                  0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
nocheck Add action command: "WordList",                0, "", 0, "", 0, "Save as YAML...", "", 0, "scripts/save_as_yaml.praat"
