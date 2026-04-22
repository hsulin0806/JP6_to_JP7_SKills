# JP6_to_JP7_Skills

可重用的 OpenClaw Skills 打包倉庫。  
目標：讓新的 AI/新機器下載此專案後，可以快速安裝同一批 skills。

## 目前包含的 Skills

- `karpathy-guidelines`
- `image-web-collector`

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

## 維護流程（新增 skill）

1. 把新 skill 放到本 repo 的 `skills/<skill-name>/`
2. 提交並推送到 GitHub
3. 在新環境重新執行 `bash scripts/install-skills.sh`

---

如果你想把這套流程做成「一行指令安裝」，可再加上 bootstrap 腳本（例如 curl + bash），但建議先維持目前這種透明可檢查的方式。
