# JP6_to_JP7_Skills

可重用的 OpenClaw Skills 打包倉庫。  
目標：讓新的 AI/新機器下載此專案後，可以快速安裝同一批 skills。

## 目前包含的 Skills

- `karpathy-guidelines`
- `image-web-collector`
- `self-improving-agent`
- `create-project-skill`
- `agent-rate-limiter`
- `lossless-claw`

## Skills 介紹與說明（統一格式）

> 後續新增 skill 也必須用同樣格式補到本段。

### 1) `karpathy-guidelines`
- **用途**：降低 LLM 常見 coding 失誤，強化「小步、可驗證、避免過度設計」
- **何時用**：寫程式、重構、Code Review、需求不清要先定義驗收標準時
- **關鍵價值**：把修改範圍收斂，避免一次改太大造成回歸

### 2) `image-web-collector`
- **用途**：做網路圖片蒐集與初步清洗，偏向高精準而非高數量
- **何時用**：要建立資料集、補資料、現有下載流程噪音高/失敗率高時
- **關鍵價值**：縮小錯誤樣本比例，降低後續標註成本

### 3) `self-improving-agent`
- **用途**：讓 agent 從每次 skill 執行結果持續學習（含完成與錯誤情境）
- **何時用**：要建立長期可進化 workflow、需要自我修正與經驗沉澱時
- **關鍵價值**：降低同類錯誤重複發生，讓流程越跑越穩

### 4) `create-project-skill`
- **用途**：把專案執行經驗整理成可交接、可更新、可回滾的 project skill
- **何時用**：專案收斂、要交接給下一個 AI、或持續維運需知識固化時
- **關鍵價值**：新 agent 可直接接手，不用從零重新探索

### 5) `agent-rate-limiter`
- **用途**：在逼近 API 限流前自動降速，避免頻繁 429 中斷
- **何時用**：長任務、多工具並行、多子代理、token 消耗不穩定時
- **關鍵價值**：維持任務連續性，減少中斷重跑成本

### 6) `lossless-claw`
- **用途**：配置與診斷 lossless-claw，強化摘要健康與記憶召回品質
- **何時用**：需要調校記憶策略、追查 recall 問題、檢查摘要品質時
- **關鍵價值**：提高跨回合資訊保真度，避免關鍵上下文遺失

## 新增 Skill 文件格式規範（必填）

每新增一個 skill，README 必須新增一段，使用以下格式：

```md
### N) `<skill-name>`
- **用途**：
- **何時用**：
- **關鍵價值**：
```

並同步更新：

1. `## 目前包含的 Skills` 清單
2. `## 驗證安裝` 預期目錄清單
3. `## 最近驗證紀錄`（新增一筆日期與驗證結果）

## 專案結構

- `skills/`：每個 skill 一個資料夾（含 `SKILL.md` 與其附屬檔案）
- `scripts/install-skills.sh`：一鍵安裝到 OpenClaw workspace 的腳本

## 本次整理重點（2026-04-22）

已將原本散落在 `skills/` 根目錄、且屬於 `create-project-skill` 的檔案，整合進可安裝 skill 目錄：

- `skills/create-project-skill/README.md`
- `skills/create-project-skill/prompts/`
- `skills/create-project-skill/templates/`
- `skills/create-project-skill/versions/INDEX.md`
- `skills/create-project-skill/universal_project_execution_prompt.md`

現在 `create-project-skill` 為完整可攜 skill 套件，安裝後不再依賴外部散落檔案。

## 快速安裝（給新的 AI / 新環境）

### 1) 下載專案

```bash
git clone https://github.com/hsulin0806/JP6_to_JP7_SKills.git
cd JP6_to_JP7_SKills
```

### 2) 安裝 skills 到 OpenClaw 預設 workspace

```bash
bash scripts/install-skills.sh
```

預設會安裝到：`~/.openclaw/workspace/skills`

### 3) 若你的 workspace 路徑不同

```bash
bash scripts/install-skills.sh /path/to/your/.openclaw/workspace
```

## 驗證安裝

```bash
ls -la ~/.openclaw/workspace/skills
```

應能看到：

- `karpathy-guidelines`
- `image-web-collector`
- `self-improving-agent`
- `create-project-skill`
- `agent-rate-limiter`
- `lossless-claw`

### 安裝後驗證清單（快速）

```bash
# 1) 安裝到測試 workspace
rm -rf /tmp/openclaw-skill-verify
mkdir -p /tmp/openclaw-skill-verify
bash scripts/install-skills.sh /tmp/openclaw-skill-verify

# 2) 驗證每個 skill 都有 SKILL.md
for d in /tmp/openclaw-skill-verify/skills/*; do
  [ -d "$d" ] || continue
  [ -f "$d/SKILL.md" ] && echo "OK  $(basename "$d")" || echo "MISS $(basename "$d")"
done
```

預期結果：全部顯示 `OK`，沒有 `MISS`。

## 安裝後怎麼用（重要）

1. 在 OpenClaw 新對話中直接下需求，系統會依 `SKILL.md` 描述自動挑選可用 skill。
2. 若你「剛安裝完」但看不到新 skill 被使用，先開一個新 session 再試一次。
3. 若仍沒生效，重啟 gateway 後再測：

```bash
openclaw gateway restart
```

4. 測試方式：下與 skill 描述高度相關的任務（例如 image collection 任務），觀察是否命中該 skill。

## 最近驗證紀錄

- 2026-04-22：已在 `/home/ubuntu/.openclaw/workspace` 執行安裝腳本並確認 skills 安裝完成。
- 2026-04-22：已從 `/home/ubuntu/Desktop/jp6_to_jp7_skills/skills` 同步並安裝 `create-project-skill`。
- 2026-04-22：已安裝並同步 `agent-rate-limiter`（來源：openclaw/skills）。
- 2026-04-22：已新增並同步 `lossless-claw`，並更新 `self-improving-agent` 為新版目錄結構。
- 2026-04-22：已完成 `create-project-skill` 目錄重整（prompts/templates/versions/README 內聚化）並推送到本 repo。
- 2026-04-22：已在 `/tmp/openclaw-skill-verify` 完成安裝驗證，6/6 skills 均檢查到 `SKILL.md`。

## 維護流程（新增 skill）

1. 每次在 OpenClaw 安裝新 skill 後，**同步到本 repo 的 `skills/<skill-name>/`**
2. 更新本 README（至少補上 skill 清單與必要說明）
3. 提交並推送到 GitHub：`https://github.com/hsulin0806/JP6_to_JP7_SKills`
4. 在新環境重新執行 `bash scripts/install-skills.sh`
