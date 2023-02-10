# app_simulation

## Objetivo

Projeto direcionado à criação de **modelo** de *Machine Learning* para previsão de **simulação de clientes** em aplicativos bancários.

## Colabore

- [ ] Siga os passos através do seu terminal utilizando a seguinte lógica:

```linux
cd to/folder/path
git clone https://github.com/daiha98/app_simulation.git
```

## Pastas

- [ ] *src* <> Diretório principal de subpastas e códigos. Nele, será armazenado todo o escopo majoritário do projeto.

## Arquivos

- [ ] *.gitattributes* <> Controle de ações no git, passando atributos específicos dentro do repositório;
- [ ] *.gitignore* <> Intencionalmente direcionar extensões cujo git deve ignorar ao commitar no projeto;
- [ ] *.pylintrc* <> Regras de clean code para validação de qualidade do código;
- [ ] *README.md* <> Auxiliar futuros contribuidores no entendimento principal dos repositórios;
- [ ] *AUTHORS.md* <> Definir os principais colaboradores que construíram as principais etapas dos repositórios;
- [ ] *requirements.txt* <> Dependências de bibliotecas da aplicação e suas versões utilizadas.

## Dicionário do Dataset´

OBS: Todas as features nomeadas *rolling* são baseadas em Médias Móveis Simples (MMS) de 22 períodos.

- **id** - ID do Cliente;
- **date** - Dia útil de simulação;
- **rolling_sum_login_on_app** - MMS do total de vezes em que o cliente logou na plataforma;
- **rolling_sum_simulations** - MMS do total de vezes em que o cliente simulou na plataforma;
- **rolling_avg_income** - MMS da média de renda cadastrada pelos clientes no app;
- **rolling_avg_loan_amount** - MMS da média do valor simulado no app para empréstimo;
- **rolling_sum_rejected_on_first_analysis** - MMS do total de vezes que o cliente foi negado em primeira análise pela instituição financeira;
- **rolling_sum_approved_on_first_analysis** - MMS do total de vezes que o cliente foi aprovado em primeira análise pela instituição financeira;
- **rolling_sum_sent_to_second_analysis** - MMS do total de vezes que o cliente foi enviado para segunda análise pela instituição financeira;
- **rolling_sum_approved_on_second_analysis** - MMS do total de vezes que o cliente foi enviado para segunda análise pela instituição financeira e foi aprovado;
- **rolling_sum_rejected_on_second_analysis** - MMS do total de vezes que o cliente foi enviado para segunda análise pela instituição financeira e foi negado;
- **rolling_mean_hours_simulation_second_analysis** - MMS da média de horas entre a etapa de simulação e o resultado da segunda análise (se tiver sido enviado);
- **rolling_sum_sent_to_first_step_after_analysis** - MMS do total de vezes que o cliente prosseguiu para a primeira fase após a simulação;
- **rolling_mean_days_first_analysis_first_step** - MMS da média de dias entre a análise da simulação (primeira ou segunda, caso exista) e a primeira fase após a simulação;
- **rolling_sum_second_step** - MMS do total de vezes que o cliente prosseguiu para a segunda fase após a simulação;
- **rolling_mean_days_first_step_second_step** - MMS da média de dias entre a primeira fase após a simulação e segunda fase;
- **rolling_sum_final_step** - MMS do total de vezes que o cliente prosseguiu para fase final após a simulação;
- **rolling_mean_days_second_step_final_step** - MMS da média de dias entre a segunda fase após a simulação e fase final;
- **rolling_sum_final_step** - MMS do total de vezes que o cliente cancelou as simulações realizadas;
- **will_simulate_d1** - Flag booleana (True/False) se cliente simulou no dia útil seguinte a data de referência.
