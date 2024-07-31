# Venus Driver Kernel Binding Source (Hamster DX) para Linux

Bibliotecas para interação direta (NBioBSP) estão incluídas com a licença.

#### Todos os direitos e créditos à Nitgen Co. Ltd. (http://www.nitgen.com)

## Instalação
### Prerequisites
Para Ubuntu ou outras distribuições baseadas em apt, instale:
```bash
sudo apt install build-essential linux-headers-$(uname -r)
```
### Compilar e Instalar
Use chmod para habilitar a execução do script caso seja necessário.
```bash
sudo make
chmod +x install-driver.sh
sudo ./install-driver.sh
```
