git clone https://github.com/Nrosa01/CPP-Project-Template

rm ./CPP-Project-Template/LICENSE
rm ./CPP-Project-Template/README.md
rm ./CPP-Project-Template/setupCPP.bash
rm ./CPP-Project-Template/setupC.bash
cd ./CPP-Project-Template
rm -rf .git

mv "./C++ Project TemplateCPP/"* ./  
rm -rf "./C++ Project TemplateC/"
rm -rf "./C++ Project TemplateCPP/"
cd ..