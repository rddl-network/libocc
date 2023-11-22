from setuptools import setup, find_packages
import os
import re

if os.environ.get('USER', '') == 'vagrant':
    del os.link

requirements = [r.strip() for r in open('requirements.txt').readlines() if not r.startswith('--')]
requirements = [r if ('git+' not in r) else re.sub(r".*egg=(.*)", r"\1", r).strip() for r in requirements]

# check_setuptools_features()

dev_require = [
    'ipython',
    'watchdog',
    'logging_tree',
    'pre-commit'
]

docs_require = [
    'Sphinx~=1.0',
    'recommonmark>=0.4.0',
    'sphinx-rtd-theme>=0.1.9',
    'sphinxcontrib-httpdomain>=1.5.0',
    'sphinxcontrib-napoleon>=0.4.4',
    'aafigure>=0.6',
    'wget'
]

install_requires = [
    'ecpy>=1.2.3',
    'paillier>=0.1',
    'osc4py3>=1.0.1',

]

setup(
    name='libocc',
    version=open('VERSION.txt').read().strip(),
    description='Open Crypto Control - OSC for hardware wallets',
    long_description=(
        "OCC is a hardware wallet environment supporting crypto primitives for users "
        "proof-of-concepts, platforms and applications with a crypto and blockchain "
        "hw-wallet. HW-wallet enabling interactions of individuals with crypto services"
        "from identity and intellectual property to secure communication and privacy "
        "heterodox financial ecosystems. new forms of exchange of data and units of value " 
        "secure multi party communication, secure and considering beneficiaries "
        ),
    url='https://github.com/rddl-network/libocc/',
    author='Tom Fuerstner',
    author_email='tom@rddl.io,
    packages=find_packages(where='.', exclude=["*.tests", "*.tests.*", "tests.*", "tests"]),
    package_data={}, #{'mypkg': ['data/*.dat']},
    scripts=[],
    license=open('LICENCE.txt').read().strip(),
    include_package_data=True,
    install_requires=requirements,
    classifiers=[
        'Development Status :: 2 - Pre-Alpha',
        'Environment :: Console',
        'Intended Audience :: End Users/Desktop',
        'Intended Audience :: Developers',
        'Intended Audience :: System Administrators',
        'Natural Language :: English',
        'License :: OSI Approved :: Apache Software License',
        'Operating System :: MacOS :: MacOS X',
        'Operating System :: POSIX',
        'Programming Language :: Python :: 3 :: Only',
        'Programming Language :: Python :: 3.10',
        'Programming Language :: Python :: 3.11',
        'Operating System :: MacOS :: MacOS X',
        'Operating System :: POSIX :: Linux'
        'Operating System :: POSIX :: Windows'
    ],
)