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

## 專案結構

- `skills/`：每個 skill 一個資料夾（含 `SKILL.md` 與其附屬檔案）
- `scripts/install-skills.sh`：一鍵安裝到 OpenClaw workspace 的腳本

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

## 維護流程（新增 skill）

1. 每次在 OpenClaw 安裝新 skill 後，**同步到本 repo 的 `skills/<skill-name>/`**
2. 更新本 README（至少補上 skill 清單與必要說明）
3. 提交並推送到 GitHub：`https://github.com/hsulin0806/JP6_to_JP7_SKills`
4. 在新環境重新執行 `bash scripts/install-skills.sh`

---

如果你想把這套流程做成「一行指令安裝」，可再加上 bootstrap 腳本（例如 curl + bash），但建議先維持目前這種透明可檢查的方式。
