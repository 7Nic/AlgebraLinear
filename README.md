# �lgebra Linear - Um Livro Colaborativo

Este � um projeto de escrita colaborativa de um livro sobre t�picos de �lgebra Linear.

Caso queira queira colaborar, entre em contato com os organizadores do livro atrav�s da lista de e-mails:

<livro_colaborativo@googlegroups.com>

Tamb�m, o [reposit�rio GitHub p�blico do livro](https://github.com/livroscolaborativos/AlgebraLinear) conta com ferramentas de comunica��o com os organizadores. Alternativamente, voc� pode enviar e-mail privado para:

<livroscolaborativos@gmail.com>

## Licen�a

Este trabalho est� licenciado sob a Licen�a Creative Commons Atribui��o-CompartilhaIgual 3.0 N�o Adaptada. Para ver uma c�pia desta licen�a, visite <http://creativecommons.org/licenses/by-sa/3.0/> ou envie uma carta para Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.

### Aviso de viola��o de copyright

Caso encontre qualquer viola��o de copyright em qualquer parte do material do livro, por favor, nos informe pelo e-mail:

<livroscolaborativos@gmail.com>

ou pela lista de e-mails:

<https://groups.google.com/forum/#!forum/livro_colaborativo>.

Iremos cuidar para analisar seu aviso o mais prontamente poss�vel e removeremos o material que n�o esteja de acordo com a licen�a [CC-BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/).

## Compila��o

O livro est� escrito em linguagem de marca��o [LaTeX](http://www.latex-project.org/).

### Formato PDF

Antes de compilar o livro, certifique-se que o arquivo `config.knd` cont�m exatamente o texto:

      \ispdftrue \ishtmlfalse

Ent�o, para compilar o livro basta executar:

    pdflatex livro.tex
    pdflatex livro.tex
    pdflatex livro.tex

Isto gera o arquivo `livro.pdf` com a vers�o completa do livro no formato PDF. Alternativamente, cada cap�tulo pode compilado separadamente.

### Formato HTML

Antes de compilar o livro, certifique-se que o arquivo `config.knd` cont�m exatamente o texto:

      \ispdffalse \ishtmltrue

Ent�o, crie uma pasta `html` no diret�rio principal do livro e compile-o com a seguinte sequ�ncia de comandos:

       latex livro
       latex livro
       latex livro
       mk4ht htlatex livro "myconfig,3,notoc*" "" "-d./html/"

### Sistema Linux

No Linux � poss�vel usar o `Makefile` para compiar o livro:

* Formato PDF:

        $ make

* Formato HTML

        $ make html

