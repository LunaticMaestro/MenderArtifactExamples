import pathlib
from setuptools import find_packages, setup

# The directory containing this file
HERE = pathlib.Path(__file__).parent

# The text of the README file
README = (HERE / "README.md").read_text()

# This call to setup() does all the work
setup(
    name="WebDashboard",
    version="2.0",
    description="Creates a dashboard on broser",
    long_description=README,
    long_description_content_type="text/markdown",
    url="https://github.com/realpython/reader",	 # TODO
    author="LunaticMaestro",
    author_email="deepak@iiitkalyani.ac.in",
    license="MIT",
    classifiers=[
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.6",
    ],
    packages=find_packages(),
    include_package_data=False,
	# python_requires='>=3.6.0',
    install_requires=[
		"dash>=1.19.0",
        'dash-daq'
	],
		
    entry_points={
		"console_scripts": [
			"webdashboard=WebDashboard.__main__:main",
		],
	}
)