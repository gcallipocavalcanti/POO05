package br.com.curso.web;

import java.util.ArrayList;
import java.util.Collections;

public class Quiz {

    public static double notaJava1;
    public static double notaJava2;
    public static double notaPython1;
    public static double notaPython2;
    private static ArrayList<Questao> questoesJava;
    private static ArrayList<Questao> questoesPython;

    

    private static ArrayList<Questao> setQuestoesJava() {

        Questao primeiraQuestao = new Questao(
                "O que é uma CLASSE?",
                "Abstração das características relevantes de um grupo de coisas do mundo real",
                new String[]{"Abstração das características irrelevantes de um grupo de coisas do mundo real.",
                    "Abstração das características elegantes de um grupo de coisas do mundo real.",
                    "Abstração das características relevantes de um grupo de coisas do mundo real",
                    "Abstração das características relevantes de situações reais do mundo."}
        );
        questoesJava.add(primeiraQuestao);
        Questao segundaQuestao = new Questao(
                "Um objeto pode representar:",
                "Entidades físicas, conceituais e de software",
                new String[]{"Somente entidades físicas (ex. aluno, carro)",
                    "Entidades físicas, conceituais e de software",
                    "Somente entidades conceituais (ex. empréstimo, processo)"}
        );
        questoesJava.add(segundaQuestao);

        Questao terceiraQuestao = new Questao(
                "Não é um dos princípios de orientação a objetos:",
                "Tarefas não são realizadas por objetos por meio de requisição de serviços.",
                new String[]{"Tarefas não são realizadas por objetos por meio de requisição de serviços.",
                    "Qualquer coisa do mundo pode ser um objeto",
                    "Cada objeto é originado a partir de uma classe."}
        );
        questoesJava.add(terceiraQuestao);

        Questao quartaQuestao = new Questao(
                "Um aluno chamado José Carlos do curso de Informática efetua matrícula nas disciplinas de Matemática, Física e Programação. Quais são os objetos da sentença?",
                "José Carlos, Informática, Matemática, Física e Programação",
                new String[]{"Aluno, curso, matrícula e disciplina",
                    "José Carlos, Informática, Matemática, Física e Programação",
                    "José Carlos, Informática e disciplinas"}
        );
        questoesJava.add(quartaQuestao);
        Questao quintaQuestao = new Questao(
                "Em relação aos atributos, é correto dizer que:",
                "São propriedades de uma classe que definem os valores possíveis para as instâncias das propriedades",
                new String[]{"São propriedades de uma classe que definem os valores possíveis para as instâncias das propriedades",
                    "Uma classe deve ter ao menos um atributo",
                    "Atributos e operações são sinônimos"}
        );
        questoesJava.add(quintaQuestao);

        Questao sextaQuestao = new Questao(
                "Um dos criadores do termo \"Programação Orientada a Objetos\"",
                "Alan Curtis Kay",
                new String[]{"Kristen Kay",
                    "Alan Curtis Kay",
                    "Dahl Kay"}
        );
        questoesJava.add(sextaQuestao);

        Questao setimaQuestao = new Questao(
                "São atributos da Classe Professor:",
                "nome, endereço, telefone.",
                new String[]{"nome, endereço, telefone.",
                    "nome, falar, cor, telefone.",
                    "nome, lecionar, CPF, RG."}
        );
        questoesJava.add(setimaQuestao);
        Questao oitavaQuestao = new Questao(
                "Marque a alternativa incorreta Em relação à definição de classe:",
                "Classes não representam necessariamente um conjunto de objetos do mundo real, podem representar objetos de software",
                new String[]{"Uma classe é uma coleção de objetos.",
                    "Classes não representam necessariamente um conjunto de objetos do mundo real, podem representar objetos de software",
                    "Uma classe serve como template(modelo) para se criar objetos."}
        );
        questoesJava.add(oitavaQuestao);

        Questao nonaQuestao = new Questao(
                "Qual Linguagem não é orientada a objetos?",
                "DELPHI",
                new String[]{"SIMULA",
                    "SMALLTALK",
                    "DELPHI"}
        );
        questoesJava.add(nonaQuestao);

        Questao decimaQuestao = new Questao(
                "O que é INSTÂNCIA?",
                "O ato de a classe criar um novo objeto.",
                new String[]{"O ato de a objeto criar um novo objeto.",
                    "O ato de a classe criar um novo objeto.",
                    "O ato de a classe criar uma nova classe."}
        );
        questoesJava.add(decimaQuestao);

        return questoesJava;

    }

    public static ArrayList<Questao> getQuestoesJava() {
        if (questoesJava == null) {
            questoesJava = new ArrayList<>();
            questoesJava = setQuestoesJava();
        }
        return questoesJava;
    }

    private static ArrayList<Questao> setQuestoesPython() {

        Questao primeiraQuestao = new Questao(
                "Resultado de >>> 8 / 3. é igual a:",
                "2.666",
                new String[]{"2.666",
                    "2",
                    "3",
                    }
        );
        questoesPython.add(primeiraQuestao);
        
        Questao segundaQuestao = new Questao(
                "a = “Hello”; b = “World”; print a, b. Resultado:",
                "Hello World",
                new String[]{"Hello World",
                    "Hello world",
                    "Hello, World"}
        );
        questoesPython.add(segundaQuestao);

        Questao terceiraQuestao = new Questao(
                ">>> test = 'just a simple string.'; test.count('r'); test.find('r'). Resultado:",
                "1; 16",
                new String[]{"1; 16",
                    "2",
                    "18"}
        );
        questoesPython.add(terceiraQuestao);

        Questao quartaQuestao = new Questao(
                "Resultado de >>> 8 / 2. é igual a:",
                "4.0",
                new String[]{"4.0",
                    "2",
                    "3",
                    }
        );
        questoesPython.add(quartaQuestao);
        Questao quintaQuestao = new Questao(
                ">>> test = 'This is just a simple string.'; test.count('r'); test.find('r'). Resultado:",
                "2; 18",
                new String[]{"2; 18",
                    "2",
                    "18"}
        );
        questoesPython.add(quintaQuestao);

        return questoesPython;

    }

    public static ArrayList<Questao> getQuestoesPython() {
        if (questoesPython == null) {
            questoesPython = new ArrayList<>();
            questoesPython = setQuestoesPython();
        }
        return questoesPython;
    }

}
