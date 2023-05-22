//
//  Advice.swift
//  moodmoji
//
//  Created by Iryna Nasevich on 28.04.23.
//

import Foundation
import SwiftUI

struct Advice : Identifiable{
    
    let id = UUID()
    
    let imageName: String
    let title: String
    let description: String
    let url: URL
}

struct adviceList {
    
    static let topTen =  [
        
    Advice(
        imageName: "i8",
        title: "Причины задержки месячных",
        description: "Женское здоровье – сложная и хрупкая система, чутко реагирующая на изменения в организме, баланс которой легко нарушается при воздействии различных факторов. Что влияет на менструальный цикл и служит причиной задержки месячных? \n\n 1.Беременность \n 2.Гормональный сбой \n 3.Гинекологические проблемы",
        url: URL(string: "https://www.womenfirst.ua/ru/stati/zhenskiy-tsikl/prichiny-zaderzhki-mesyachnykh/index.html")!),
    
    Advice(
        imageName: "i1",
        title: "Нерегулярный менструальный цикл",
        description: "Многие современные молодые девушки и женщины с большим жизненным опытом считают, что женское здоровье неразлучно связано с менструальным циклом, в особенности с его регулярностью. Отчасти так и есть. Нерегулярный цикл в большинстве случаев является патологией, которая указывает или является следствием каких-либо заболеваний, протекающих в женском организме. Самыми частыми причинами являются заболевания репродуктивной системы или сбои гормонального фона.",
        url: URL(string: "https://www.womenfirst.ua/ru/stati/zhenskiy-tsikl/neregulyarnyy-menstrualnyy-tsikl-legkoe-neudobstvo-ili-realnaya-ugroza/index.html")!),

    Advice(
        imageName: "i5",
        title: "Обильные месячные – прямой путь к анемии",
        description: "С обильными и болезненными месячными, или меннорагией, на данный момент существует некий парадокс – обычно их не воспринимают как проблему, повод насторожиться и обратиться к врачу. Между тем, по оценкам ВОЗ (Всемирной Организации Здравоохранения), более 30% женщин в мире от 18 – 45 лет имеют анемию, связанную с потерей железа во время менструации. Женщина всю жизнь может терпеть боль и дискомфорт, считая, что это норма, и ничего нельзя с этим сделать, но это не так.",
        url: URL(string: "https://www.womenfirst.ua/ru/stati/zhenskiy-tsikl/obilnye-mesyachnye-pryamoy-put-k-anemii/index.html")!),

    Advice(
        imageName: "i7",
        title: "Как рассчитать овуляцию",
        description: "В каждом месячном цикле есть только один промежуток, в течение которого женщина может забеременеть. Пользуясь этой информацией, можно как избежать нежелательной беременности, так и приблизить долгожданное материнство. Для этого нужно рассчитать овуляцию (время созревания и выхода женской половой клетки) одним из существующих способов и придерживаться полученного графика.",
        url: URL(string: "https://www.womenfirst.ua/ru/stati/planirovanie-beremennosti/kak-rasschitat-ovulyatsiyu/index.html")!),

    
    Advice(
        imageName: "i4",
        title: "Любовь под защитой – методы контрацепции",
        description: "На сегодняшний день существует огромный выбор методов контрацепции для женщин, которые помогут предотвратить наступление нежелательной беременности и сохранить женское здоровье для возможности рождения здоровых детей.",
        url: URL(string: "https://madez.ru/stati-i-entsiklopediya/stati-o-zdorove/akusherstvoginekologiya-reprudoktologiya/akusherstvoginekologiya-reprudoktologiya_98.html")!),

    Advice(
        imageName: "i3",
        title: "Когда наступает климакс",
        description: "Климакс полностью естественный процесс, его абсолютно не стоит бояться, но о нем стоит знать. Наступление климакса означает, что организм стареет и теряет основную женскую функцию – возможность зачатия и вынашивания беременности. Менструальные циклы заканчиваются, и происходит полная гормональная перестройка.",
        url: URL(string: "https://www.womenfirst.ua/ru/stati/zhenskiy-tsikl-i-vozrast/kogda-nastupaet-klimaks/index.html")!),

    Advice(
        imageName: "i2",
        title: "Планируем беременность",
        description: "В современном мире все реже можно встретить семью, зачатие ребенка в которой случилось в первую брачную ночь. Обычно перед молодоженами стоит ряд непростых задач, к примеру, заработать на квартиру, и к разговору о ребенке супруги приходят несколько позже.",
        url: URL(string: "https://madez.ru/stati-i-entsiklopediya/stati-o-zdorove/akusherstvoginekologiya-reprudoktologiya/akusherstvoginekologiya-reprudoktologiya_39.html")!),

    Advice(
        imageName: "i6",
        title: "Болезненные месячные",
        description: "Сильные боли при месячных — это не вариант нормы, несмотря на большую распространенность. Это заболевание называется дисменореей (или альгодисменореей). Гинекологи рассматривают его как одно из нарушений менструального цикла. Из этого материала вы узнаете, почему болит живот в первый день месячных, можно ли избавиться от этой проблемы.",
        url: URL(string: "https://gorzdrav.org/blog/boleznennye-mesjachnye-prichiny-i-varianty-lechenija/?utm_source=google.com&utm_medium=organic&utm_campaign=google.com&utm_referrer=google.com")!),

        
    ]
    
}
