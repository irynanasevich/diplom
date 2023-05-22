
import Foundation

enum EmotionsCategory: Int {
    case Sex = 0;
    case Menstruation = 1;
    case Symptom = 2;
}

struct Emotion: Identifiable, Comparable {
    static func < (lhs: Emotion, rhs: Emotion) -> Bool {
        return lhs.category.rawValue < rhs.category.rawValue;
    }
    
    let emoji: Character;
    let name: String;
    let category: EmotionsCategory;
    var id: String { name };
}

class EmotionList: ObservableObject {
    @Published var emotions: [Emotion];
    
    internal init() {
        self.emotions = [
            Emotion(emoji: "🔞", name: "Секс с контрацепцией", category: EmotionsCategory.Sex),
            Emotion(emoji: "🔞", name: "Секс без контрацепции", category: EmotionsCategory.Sex),
            Emotion(emoji: "💊", name: "Использование экстренной контрацепции", category: EmotionsCategory.Sex),
            Emotion(emoji: "🩸", name: "Обильные месячные", category: EmotionsCategory.Menstruation),
            Emotion(emoji: "🩸", name: "Умеренные месячные", category: EmotionsCategory.Menstruation),
            Emotion(emoji: "🩸", name: "Скудные месячные", category: EmotionsCategory.Menstruation),
            Emotion(emoji: "🙄", name: "Акне", category: EmotionsCategory.Symptom),
            Emotion(emoji: "😖", name: "Боль в пояснице", category: EmotionsCategory.Symptom),
            Emotion(emoji: "😩", name: "Вздутие", category: EmotionsCategory.Symptom),
            Emotion(emoji: "😭", name: "Выпадение волос", category: EmotionsCategory.Symptom),
            Emotion(emoji: "‍😵‍💫", name: "Головная боль", category: EmotionsCategory.Symptom),
            Emotion(emoji: "‍🫣", name: "Изменение аппетита", category: EmotionsCategory.Symptom),
            Emotion(emoji: "🥱", name: "Изменение режима сна", category: EmotionsCategory.Symptom),
            Emotion(emoji: "😓", name: "Недержание мочи", category: EmotionsCategory.Symptom),
            Emotion(emoji: "🤒", name: "Ночная потлтивость", category: EmotionsCategory.Symptom),
            Emotion(emoji: "😰", name: "Озноб", category: EmotionsCategory.Symptom),
            Emotion(emoji: "😡", name: "Перепады настроения", category: EmotionsCategory.Symptom),
            Emotion(emoji: "🤐", name: "Приливы жара", category: EmotionsCategory.Symptom),
            Emotion(emoji: "😐", name: "Провалы в памяти", category: EmotionsCategory.Symptom),
            Emotion(emoji: "😤", name: "Спазмы внизу живота", category: EmotionsCategory.Symptom),
            Emotion(emoji: "😬", name: "Сухость кожи", category: EmotionsCategory.Symptom),
            Emotion(emoji: "😮‍💨", name: "Тазовая боль", category: EmotionsCategory.Symptom),
            Emotion(emoji: "🤬", name: "Боль в груди", category: EmotionsCategory.Symptom),
            Emotion(emoji: "🤮", name: "Тошнота", category: EmotionsCategory.Symptom)
        ]
        
        self.emotions.sort();
    }
}
