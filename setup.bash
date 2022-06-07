git clone https://github.com/Nrosa01/CPP-Project-Template

rm ./CPP-Project-Template/LICENSE
rm ./CPP-Project-Template/README.md
rm ./CPP-Project-Template/setup.bash
cd ./CPP-Project-Template
rm -rf .git

mv ./C++-Project-Template/* ./
cd ..