# HSE-WEB3


## Тема
* Изучение инструментов анализа безопасности zkp и освоение их работы.


## Ссылки
* План - https://docs.google.com/document/d/1hJJlelb_N5BMCu2HqGcPSveaY0vE69JcQFDP6iH0Jq8/edit?usp=sharing
* GitHub, zk-bug-tracker - https://github.com/0xPARC/zk-bug-tracker
* Circom - https://docs.circom.io/
* Circomspect - https://github.com/trailofbits/circomspect 
* It pays to be Circomspect | Trail of Bits Blog - https://blog.trailofbits.com/2022/09/15/it-pays-to-be-circomspect/
* GitHub, Veridise/Picus - https://github.com/Veridise/Picus
* Видео про Picus (там хороший курс по zkp) - https://www.youtube.com/watch?v=av7Wq742GIA
* GitHub, franklynwang/EcneProject - https://github.com/franklynwang/EcneProject
* Ecne: Automated Verification of ZK Circuits - https://0xparc.org/blog/ecne
* Coda - https://github.com/Veridise/Coda 
* Certifying Zero-Knowledge Circuits with Refinement Types - https://eprint.iacr.org/2023/547.pdf
* GitHub, quantstamp/halo2-analyzer - https://github.com/quantstamp/halo2-analyzer
* Automated Analysis of Halo2 Circuits - https://ceur-ws.org/Vol-3429/paper3.pdf
* Запись первой лекции zk Bootcamp про circom - https://www.youtube.com/watch?v=M1PQIcvX7Fk
* Запись второй лекции zk Bootcamp - https://www.youtube.com/watch?v=F8ZH_kcrtpA
* Запись третьей лекции zk Bootcamp - https://www.youtube.com/watch?v=FSLy24uMGTs
* Гугл-диск - https://drive.google.com/drive/folders/1Vb0OXOvW9qtjLfUiDlPKaODl25KSjO60?usp=sharing
* ZK Bug Tracker (https://github.com/0xPARC/zk-bug-tracker)


## Фаза 1: Обзор рынка и предварительный анализ  
    + Шаг 1: Исследование рынка  
        + 1.1 Сбор данных о доступных инструментах безопасности ZKP.  
            * Zero-Knowledge Proof может быть двух видов — интерактивное (обязательно в режиме реального времени) и неинтерактивное (публикация заранее и позже проверка подлинности).
            
            * Должен обладать тремя свойствами:
            1. Полнота: если утверждение действительно верно, то Доказывающий убедит в этом Проверяющего с любой наперед заданной точностью.
            2. Корректность: если утверждение неверно, то любой, даже «нечестный», Доказывающий не сможет убедить Проверяющего за исключением пренебрежимо малой вероятности.
            3. Нулевое разглашение: если утверждение верно, то любой, даже «нечестный», Проверяющий не узнает ничего кроме самого факта, что утверждение верно.
            
            * ZK-Snark или же краткий неинтерактивный аргумент знания с нулевым разглашением — это решение, в котором:
            1. Краткий означает, что размер доказательства должен быть достаточно маленьким, чтобы его можно было проверить за короткое время.
            2. Неинтерактивный указывает на то, что это конструкция, где между проверяющим и доказывающим нет двусторонней связи.
            3. Аргумент знания создаёт ситуацию, когда доказывающий может убедить проверяющего в том, что существует определенная информация, не раскрывая при этом всю информацию целиком.
            4. Нулевое разглашение обеспечивает свойство, что если утверждение истинно, то проверяющий не узнает ничего, кроме того факта, что утверждение истинно.
            
            * ZK-Stark или же масштабируемый прозрачный аргумент знания с нулевым разглашением по сути является "двоюродным братом" ZK-Snark, только лучше. 
            * ZK-Stark устраняет одну из основных слабостей ZK-Snark: его зависимость от доверенной настройки. 
            * Для протокола ZK-Snark это является необходимым условием, а для ZK-Stark такая фаза не требуется. Вместо этого ZK-Stark полагается на более простые криптографические предположения.
        
        + 1.2 Создание списка наиболее популярных инструментов (Circomspect, Picus, Ecne, Coda, Korrekt).  
            ZK Bug Tracker (https://github.com/0xPARC/zk-bug-tracker) - список существующих багов
            
            * Circomspect (https://github.com/trailofbits/circomspect) by TrailOfBits
            * Picus (https://picus.xyz) by Veridise
            * Ecne (https://github.com/franklynwang/EcneProject) by Franklyn Wang
            * Coda (https://codaplatform.com/web3-user-study/) by Veridise
            * Korrekt (https://github.com/quantstamp/halo2-analyzer) by Quantstamp
            * ZK-EVM Audit education sessions (https://www.notion.so/zkEVM-Audit-Education-Session-11-15-11-22-86d60daceadb438f85908817f7082611) by Scroll & Polygon
            
    + Шаг 2: Предварительный сравнительный анализ  
        + 2.1 Определение ключевых характеристик для сравнения (метод проверки, возможности и т.д.).  
            Нужно составить список критериев, помимо методов проверки и возможностей, к примеру: простота интеграции, отказоустойчивость, как долго на рынке, насколько часто выходят обновления.
            
        + 2.2 Документирование сравнение инструментов.  
            После чего внести вот в таблицу (https://docs.google.com/spreadsheets/d/1iuGHSn4KOSn92DxdyrqMQVmhRcWADfa2k_iXtY9jxjE/edit?usp=sharing) и сравнить

## Фаза 2: Детальное изучение и сравнение инструментов
    + Шаг 3: Анализ каждого инструмента
        + 3.1 Изучение документации каждого инструмента.
            https://docs.google.com/spreadsheets/d/1iuGHSn4KOSn92DxdyrqMQVmhRcWADfa2k_iXtY9jxjE/edit?usp=sharing
            
        + 3.2 Запись основных функций и методологии проверки для каждого инструмента.
            https://docs.google.com/spreadsheets/d/1iuGHSn4KOSn92DxdyrqMQVmhRcWADfa2k_iXtY9jxjE/edit?usp=sharing    
                        
    +- Шаг 4: Подробное сравнение
        +- 4.1 Сравнение инструментов по выбранным критериям.
            https://docs.google.com/spreadsheets/d/1iuGHSn4KOSn92DxdyrqMQVmhRcWADfa2k_iXtY9jxjE/edit?usp=sharing    
                    
        +- 4.2 Выявление сильных и слабых сторон каждого инструмента.
            https://docs.google.com/spreadsheets/d/1iuGHSn4KOSn92DxdyrqMQVmhRcWADfa2k_iXtY9jxjE/edit?usp=sharing
            
## Фаза 3: Практическое применение
    + Шаг 5: Выбор инструмента
        + 5.1 Каждый выбирает себе свой
            Частично сделав фазу 2, я бы все-таки хотел выбрать Circomspect, так как для меня важна простота пользования и поддерживаемость, но в целом имеет смысл использовать несколько, 
            чтобы отлавливать больше возможных ошибок.
            
            Circumspect - это статический анализатор и вкладыш для языка программирования Circum. Кодовая база в значительной степени заимствована из компилятора Rust Circom, созданного den 3.

            В настоящее время Circumspect реализует ряд этапов анализа, которые могут выявлять потенциальные проблемы в схемах Circum. Наша цель - продолжать добавлять новые этапы анализа, 
            чтобы иметь возможность обнаруживать проблемы с режимом в будущем.
            
    +- Шаг 6: Установка и настройка
        +- 6.1 Задокументировать процесс установки выбранного инструмента.
        - 6.2 Подготовка среды для тестирования (VM/docker).

    - Шаг 7: Тестирование
        - 7.1 Запуск тестовых примеров из интернета.
        - 7.2 Предложение собственных примеров использования.
        - 7.3 Документирование результатов тестов.
        
## Фаза 4: Документация и автоматизация
    - Шаг 8: Создание инструкций
        - 8.1 Написание подробного туториала в формате Markdown/Google Docs.
        - 8.2 Описание процесса установки, настройки и использования инструмента.
        
    - Шаг 9: Автоматизация
        - 9.1 Создание скриптов для автоматизации установки и запуска тестов.
        - 9.2 Добавление примеров кода и скриптов в документацию.

## Фаза 5: Завершение и обзор
    - Шаг 10: Итоговый обзор
        - 10.1 Составление итогового отчета о проведенном исследовании.
        - 10.2 Проверка полноты документации и примеров кода.
        
    - Шаг 11: Подготовка материалов
        - 11.1 Форматирование всех документов и кода.
        - 11.2 Размещение материалов (например, на GitHub).


        

