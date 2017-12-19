# Folha de estilo

Este documento cont�m informa��es sobre os padr�es de estilo de escrita e organiza��o do livro colaborativo. Antes de submeter uma colabora��o, verifique que seu trabalho est� de acordo com todos os pontos observados nesta folha de estilo.

Estamos muito mais interessados em melhorar o conte�do do livro (tando em qualidade como em quantidade) e menos interessados em melhorar a sua est�tica. Portanto, busque manter o c�digo LaTeX o mais simples poss�vel buscando potencializar a colabora��o de outras pessoas e de forma a se obter um resultado que permita uma leitura objetiva e agrad�vel do livro.

Qualquer d�vida, escreva em nossa lista de discuss�o:

<livro_colaborativo@googlegroups.com>

Tamb�m, o [reposit�rio GitHub do livro](http://github.com/livroscolaborativos/AlgebraLinear) cont�m ferramentas de comunica��o com os organizadores, bem como, � poss�vel contatar os organizadores de forma privada atrav�s do e-mail:

<livroscolaborativos@gmail.com>

## Regionaliza��o e Estilo de Escrita

O livro est� escrito em l�ngua portuguesa, seguindo os costumes lingu�sticos brasileiros. D�-se prioridade � ortografia prevista no Acordo Ortogr�fico de 1990.

### Capitaliza��o de nomes de m�todos

Deve-se usar mai�scula apenas em nomes pr�prios, ex: m�todo de Newton, m�todos dos m�nimos quadrados.

## C�digo fonte LaTeX

O livro est� escrito em [LaTex](https://latex-project.org/) e os t�picos est�o organizados por semanas letivas.

Para informa��es sobre como compilar o c�digo fonte, leia o arquivo `README.md`.

### Compatibilidade

O c�digo LaTeX do livro deve permitir sua compila��o com `pdflatex`.

#### Instru��es LaTeX n�o compat�veis

Fazemos a convers�o do livro de c�digo LaTeX para HTML usando o pacote [TeX4ht](https://www.tug.org/tex4ht/). Os ambientes matem�ticos s�o convertidos para [MathMl](https://www.w3.org/Math/) e ent�o renderizados usando [MathJax](https://www.mathjax.org/). Para que a convers�o funcione de forma apropriada deve-se observar as seguintes quest�es:

* Ambientes matem�ticos v�lidos s�o: `equation`, `align` e `eqnarray`. N�o use `$$ $$` ou `[\ \]`.

* N�o usar `array` para composi��o de tabelas. A alternativa � usar o ambiente `tabular`, por exemplo:

        \begin{center}
	  \begin{tabular}{r|c|c}
	    $h$ & $Df(1)$ & $|f'(1) - D_{+,h}F(1)|$ \\ \hline
            $10^{-1}$ & $-8,67062\E-01$ & $2,55909\E-02$\\
            $10^{-2}$ & $-8,44158\E-01$ & $2,68746\E-03$\\
            $10^{-14}$ & $-8,43769\E-01$ & $2,29851\E-03$ \\\hline
	  \end{tabular}
	\end{center}

* N�o colocar `label` dentro de colchetes.

### Figuras

Os arquivos das figuras devem ser fornecidos em formato `PNG` sendo armazenados no subdiret�rio `SemanaXX`, onde `SemanaXX` � o diret�rio do t�pico da semana que a figura se refere. As figuras devem ser fornecidas no tamanho desejado para o livro, i.e. evite definir o tamanho da figura no c�digo LaTeX. Para uma vizualiza��o conform�vel em celulares, recomendamos que a figura tenha largura inferior a 320px.

A inclus�o de uma figura no c�digo LaTex deve ser feita da seguinte forma:

    \begin{figure}
        \centering
	\includegraphics{\dir/SemanaXX/figfoo.png}
	\caption{Descri��o da figura figfoo.}
	\label{fig:figfoo}
    \end{figure}

N�o insira figuras dentro de outros ambientes.

Sempre que poss�vel, forne�a o c�digo fonte da figura armazenando-o na pasta `SemanaXX/figfoo`, sendo figfoo.png o arquivo da figura. Nesta mesma pasta, crie um arquivo README.md com uma descri��o da figura e a lince�a da mesma, a qual deve ser compat�vel com a CC-BY-SA 3.0.

### Equa��es e s�mbolos matem�ticos

As equa��es e s�mbolos matem�ticos est�o escritos usando a cole��o de pacotes [AMS-LaTeX](http://www.ams.org/publications/authors/tex/amslatex).