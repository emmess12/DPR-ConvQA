from setuptools import find_packages, setup

with open("requirements.txt", "r") as f:
    requirements = list(f.read().splitlines())

setup(
    name="dprconvqa",
    version="1.0",
  description="conference paper",
    long_description=open("README.md").read(),
    long_description_content_type="text/markdown",
    packages=find_packages(),
    include_package_data=False,
    keywords=["qa", "question answering", "information retrieval", "conversational", "ConvQA", "multi-turn"],
    classifiers=[
        "Programming Language :: Python :: 3.8"
    ],
    install_requires=requirements
)
