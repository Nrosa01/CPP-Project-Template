git clone https://github.com/Nrosa01/CPP-Project-Template

rm ./CPP-Project-Template/LICENSE
rm ./CPP-Project-Template/README.md
rm ./CPP-Project-Template/setupC.bash
rm ./CPP-Project-Template/setupCPP.bash
cd ./CPP-Project-Template
rm -rf .git

mv "./C++ Project TemplateC/"* ./  
mv "./C++ Project TemplateC/".* ./  
rm -rf "./C++ Project TemplateC/"
rm -rf "./C++ Project TemplateCPP/"
cd ..