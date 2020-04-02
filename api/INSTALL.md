
Instalando Node.js via gerenciador pacotes

Nota: Os pacotes nessa página são mantidos e suportados por seus respectivos empacotadores, não pela equipe principal do Node.js. Por favor, relate quaisquer problemas encontrados para o mantenedor do pacote. Se o problema for um bug no próprio Node.js, o mantenedor deve relatar para o issue upstream.

    Android
    Arch Linux
    Debian e Distribuições Linux baseadas em Ubuntu, Enterprise Linux/Fedora e pacotes Snap
    FreeBSD
    Gentoo
    NetBSD
    nvm
    OpenBSD
    openSUSE e SLE
    macOS
    SmartOS e illumos
    Solus
    Void Linux
    Windows

Android

O suporte ao Android ainda é experimental no Node.js, portanto, os binários pré-compilados ainda não são fornecidos pelos desenvolvedores do Node.js

Entretanto, existem algumas soluções de terceiros. Por exemplo, a comunidade Termux que fornece um emulador de terminal e ambiente Linux para Android, assim como seu próprio gerenciador de pacotes e extensa coleção com muitas aplicações pré-compiladas. Esse comando vai instalar a última versão disponível do Node.js no Termux:

pkg install nodejs

Atualmente, os binários do Node.js no Termux estão ligados ao system-icu (dependência do pacote libicu)
Arch Linux

Os pacotes para o Node.js e o npm estão disponíveis no Repositório da Comunidade.

pacman -S nodejs npm

Debian e distribuições Linux basedas em Ubuntu, Enterprise Linux/Fedora e pacotes Snap

Distribuição dos binários oficiais do Node.js são fornecidos pelo NodeSource.
FreeBSD

A versão mais recente do Node.js está disponível na porta www/node.

Instale um pacote binário via pkg:

pkg install node

Ou compile-o por conta própria usando ports:

cd /usr/ports/www/node && make install

Gentoo

O Node.js está disponível no diretório portage.

emerge nodejs

NetBSD

Node.js está disponível no diretório pkgsrc:

cd /usr/pkgsrc/lang/nodejs && make install

Ou instale um pacote binário (se estiver disponível para sua plataforma) usando pkgin:

pkgin -y install nodejs

nvm

Node Version Manager é um script bash utilizado para gerenciar múltiplas versões do Node.js. Ele Permite que você instale, desinstale, mude de versão e etc. Para instalar o nvm, use esse script de instalação.

Em sistemas Unix / OS X o Node.js compilado a partir do código fonte pode ser instalado usando nvm, instalando-o no local em que o nvm espera:

env VERSION=`python tools/getnodeversion.py` make install DESTDIR=`nvm_version_path v$VERSION` PREFIX=""

Despois disso, você pode usar o nvm para alternar entre versões lançadas e versões compiladas a partir do código fonte. Por exemplo, se a versão do Node.js é v8.0.0-pre:

nvm use 8

Uma vez que a versão oficial for lançada você pode querer desinstalar a versão compilada a partir do código fonte:

nvm uninstall 8

OpenBSD

O Node.js está disponível através das portas do sistema.

/usr/ports/lang/node

Usando pkg_add no OpenBSD:

pkg_add node

openSUSE e SLE

Node.js está disponível nos principais repositórios sob os seguintes pacotes:

    openSUSE Leap 42.2: nodejs4
    openSUSE Leap 42.3: nodejs4, nodejs6
    openSUSE Tumbleweed: nodejs4, nodejs6, nodejs8
    SUSE Linux Enterprise Server (SLES) 12: nodejs4, nodejs6 (O "Web and Scripting Module" deve ser adicionado antes da instalação.)

Por exemplo, para instalar o Node.js 4.x no openSUSE 42.2, execute o seguinte como root:

zypper install nodejs4

macOS

Basta baixar o macOS Installer diretamente do site nodejs.org.

Se desejar baixar o pacote com bash:

curl "https://nodejs.org/dist/latest/node-${VERSION:-$(wget -qO- https://nodejs.org/dist/latest/ | sed -nE 's|.*>node-(.*)\.pkg</a>.*|\1|p')}.pkg" > "$HOME/Downloads/node-latest.pkg" && sudo installer -store -pkg "$HOME/Downloads/node-latest.pkg" -target "/"

Alternativas

Usando Homebrew:

brew install node

Usando MacPorts:

port install nodejs<major version>

# Exemplo
port install nodejs7

Usando pkgsrc:

Instale o pacote binário:

pkgin -y install nodejs

Ou compile manualmente pelo pkgsrc:

cd pkgsrc/lang/nodejs && bmake install

SmartOS e illumos

Imagens do SmartOS vêm com o pkgsrc pré-instalado. Em outras distribuições illumos, primeiro instale pkgsrc, então você pode instalar o binário normalmente:

pkgin -y install nodejs

Ou compile manualmente pelo pkgsrc:

cd pkgsrc/lang/nodejs && bmake install

Solus

O Solus fornece o Node.js em seu repositório principal.

sudo eopkg install nodejs

Void Linux

Void Linux possui versões estáveis de Node.js no seu repositório principal.

xbps-install -Sy nodejs

Windows

Baixe o Windows Installer diretamente do site nodejs.org.
Alternativas

Usando Chocolatey:

cinst nodejs
# ou para a instalação completa com npm
cinst nodejs.install

Usando Scoop:

scoop install nodejs

https://nodejs.org/.
https://nodejs.org/en/download/package-manager/
https://nodejs.org/en/download/.
