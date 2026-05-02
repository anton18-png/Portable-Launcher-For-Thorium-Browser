# 🚀 Portable Launcher For Thorium Browser

> **Портативный лаунчер для Thorium Browser с импортом/экспортом реестра и полной приватностью**

Основано на [Thorium Browser](https://github.com/Alex313031/Thorium) от Alex313031. Лаунчер на базе [portapps/ungoogled-chromium-portable](https://github.com/portapps/ungoogled-chromium-portable).

---

## 🔥 ЧТО ТАКОЕ THORIUM И ПОЧЕМУ ОН ЛУЧШЕ ХРОМА

| Обычный Chrome / Chromium | Thorium |
|---------------------------|---------|
| Медленный на старых CPU | ✅ **Оптимизирован под AVX** |
| Нет HEVC/H.265 | ✅ **Полная поддержка всех кодеков** |
| Нет JPEG XL | ✅ **JPEG XL включён по умолчанию** |
| Новый уродливый UI (CR2023) | ✅ **Классический интерфейс** |
| Download Shelf удалили | ✅ **Классическая полоса загрузок** |
| FLOC и Privacy Sandbox | ✅ **Отключены** |
| Do Not Track выключен | ✅ **Включён** |
| Default Browser Infobar | ✅ **Отключён** |
| FTP отключён | ✅ **FTP работает** |

---

## 📦 ЧТО ВНУТРИ СБОРКИ

```
Portable Launcher For Thorium Browser/
│
├── 🚀 Thorium-PortApps.exe      # Лаунчер от portapps (портативный запуск)
├── 🎯 Thorium.exe                # Скомпилированный батник (bat2exe)
├── 📜 Thorium.bat                # Исходник: импорт/экспорт реестра + запуск
├── ⚙️ Setup.exe                  # Установщик (скомпилированный)
├── 📦 Setup.bat                  # Скачивание, распаковка, настройка
├── 🖼️ icon.ico                   # Иконка Thorium
├── 🔧 7za.exe                    # Распаковщик
├── 📄 portapp.json               # Конфиг портативного лаунчера
│
├── 🗄️ data/                      # Профиль пользователя (создаётся при запуске)
│
└── 📁 app/                       # Браузер
    ├── chrome.exe                # Переименованный thorium.exe
    └── ...                       # Остальные файлы Thorium
```

---

## 🛠️ КАК РАБОТАЕТ ЛАУНЧЕР (Thorium.bat / Thorium.exe)

```batch
1. Получает SID текущего пользователя
2. Если есть Thorium.reg — импортирует настройки
3. Запускает браузер с флагами приватности
4. Ждёт закрытия
5. Экспортирует настройки обратно в Thorium.reg
6. Очищает реестр от следов
```

**Флаги запуска:**
```bash
--allow-outdated-plugins      # Старые плагины разрешены
--disable-logging              # Нет логов
--disable-breakpad             # Нет отчётов о крашах
--disable-encryption           # Отключить шифрование (для портативности)
--disable-machine-id           # Нет ID компьютера
--disable-usage-statistics     # Нет статистики
--disable-crash-reporter       # Нет отчётов о крашах
--disable-metrics              # Нет метрик
--disable-metrics-reporting    # Нет отправки метрик
--disable-rlz                  # Нет маркетинговых меток
```

**Синхронизация Google работает** — флаги `--disable-sync` НЕ используются.

---

## 📥 УСТАНОВКА

### Шаг 1: Запустите Setup.exe (или Setup.bat)
```
Setup.exe
```
Что делает установщик:
1. Скачивает последнюю версию Thorium с GitHub
2. Распаковывает через 7za.exe
3. Переименовывает `BIN` → `app` для PortApps
4. Переименовывает `thorium.exe` → `chrome.exe` для PortApps

### Шаг 2: Запускайте Thorium.exe
После установки используйте `Thorium.exe` для портативного запуска.

---

## 🚀 ДОПОЛНИТЕЛЬНЫЕ ФЛАГИ THORIUM

```bash
# Включить классический UI (Chrome Refresh 2023)
chrome://flags/#thorium-2024

# Включить классическую полосу загрузок
chrome://flags/#download-shelf
```

---

## 🔗 ССЫЛКИ

- 🌐 **Thorium Official:** [github.com/Alex313031/Thorium](https://github.com/Alex313031/Thorium)
- 📦 **Portapps:** [github.com/portapps/ungoogled-chromium-portable](https://github.com/portapps/ungoogled-chromium-portable)
- 💬 **Telegram:** [@all_tweaker](https://t.me/all_tweaker)

---

**⭐ ЗВЕЗДА НА ГИТХАБЕ = СКАЗАТЬ СПАСИБО**

*Thorium — браузер, который чувствует твой процессор.*
