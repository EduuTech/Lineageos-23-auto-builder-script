<h1 align="center">LineageOS 23 auto builder script</h1>

[Português](README.md) | [English](README_EN.md)

Olá,bem vindo ao meu repositório,esse repositório contem um builder de LineageOS 23,e eu acho que eu vou adicionar outras versões

O KernelSU no repositório é pro nao-gki,suportado ate 4.14,mais da pra rodar pra GKI [aqui](#gki-pro-kernelSU)

Se voce quiser que eu adicione algo,crie uma issue ou faça um fork

Oq isso faz? :Esse script usa ferramentas pra fazer build de LineageOS 23

Como baixar o script

```bash
git clone https://github.com/EduuTech/Lineageos-23-auto-builder-script.git
./menu.sh
```
## Se quiser menos texto na tela
Se voce quiser so rode 
```bash
./menu.sh --NON-VERBOSE
```

## GKI pro KernelSU
Se voce quiser usar KernelSU com GKI,rode
```bash
./menu.sh --KSU-GKI
```
## Se quiser fazer alteraçoes ao kernel
Quando aparecer só "..." aperte CTRL + C
Quando vc terminar,rode
```bash
./menu.sh --BUILD
```
Depois que voce terminar de modificar é so rodar
# Requerimentos recomandadas
Ubuntu 24 ou debian  mais recente [Lista de provavelmente suportados](OS_LIST)

Nota:Nas distros baseadas de Ubuntu 24,vê se ê x64 e baseado no mais recente,mais debian,só baixa o mais recente

16GB de RAM

8 cores 
# Aviso!
Nao execute em uma pasta diferente que a pasta que voce clonou
#

Eu criei em inglês e português 

Eu ainda nao testei no linux,pois eu criei isso no Android,ai ele é fraco. Eu criei isso no tedio

E porque voce nao testou no seu pc? :Pq nao tenho
Eu tentei meu maximo pra deixar isso bom

;D

Para fazer:
- [x] Suporte do KernelSU
- [ ] Adicionar suporte para dispositivo GKI (Sobre do KernelSU)
- [x] Adicionar suporte a fazer signed builds (ainda sendo feito)
- [x] Adicionar novo metodo de traduçoes(Ainda sendo feito)

[Lincença](LINCENSE)

Ainda sendo ageitado o metodo de assianar,e implementado metodos mais simples pqra traduçoes