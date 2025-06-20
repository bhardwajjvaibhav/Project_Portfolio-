# 🧠 Radiology NER Assistant using BioBERT & Gradio

A lightweight Named Entity Recognition (NER) assistant that extracts **Anatomical Locations**, **Observations**, and optionally **Severity** from free-text radiology reports using a fine-tuned BioBERT model. Deployed using Gradio on Hugging Face Spaces.

---

## ⭐ Project Summary (Using STAR Method)

### 🧩 Situation

Radiology reports are typically written in **unstructured free text**, making it difficult to extract structured clinical information such as anatomical findings and observations. Manual annotation is slow, inconsistent, and costly.

---

### 🎯 Task

- Build a **domain-specific NER model** to extract:
  - **Anatomical Locations**
  - **Observations**
  - **Severity** (future scope)

- Deploy the model as a **Gradio web app** for real-time, user-friendly access.

---

### 🚀 Action

#### 🔹 Dataset & Annotation
- Used the **ChestXpert** dataset, which contains real radiology reports.
- Manually labeled the dataset using the **BIO tagging scheme**:
  - `B-ANAT`, `I-ANAT` → Anatomical terms  
  - `B-OBS`, `I-OBS` → Observations  
  - `B-SEV`, `I-SEV` → Severity

#### 🔹 Model Training
- Fine-tuned **BioBERT** (`dmis-lab/biobert-base-cased-v1.1`) using:
  - Hugging Face Transformers
  - PyTorch backend
  - Custom token cleaning logic for subwords

#### 🔹 Web Deployment
- Wrapped the model in a **Gradio app** that:
  - Accepts free-text radiology reports
  - Returns a sentence-wise table of extracted entities
- Hosted using **Hugging Face Spaces**

---

### 🌟 Result

✅ Successfully deployed a **real-time NER demo** that helps:
- Structure clinical narratives
- Accelerate data annotation
- Assist healthcare AI researchers

---

## 🌐 Live Demo

🚀 Try the app: [Hugging Face Space URL here]  
🧠 Model: [`VaibhavBhardwaj/Radbert`](https://huggingface.co/VaibhavBhardwaj/Radbert)

---

## 🛠️ Tech Stack

| Component        | Tool / Library                            |
|------------------|--------------------------------------------|
| Model            | BioBERT (fine-tuned)                      |
| NLP Framework    | Hugging Face Transformers                 |
| Deep Learning    | PyTorch                                   |
| Tokenization     | WordPiece, AutoTokenizer                  |
| Data Labeling    | Manual + BIO tagging                      |
| Web App          | Gradio                                    |
| Hosting          | Hugging Face Spaces                       |
| Data Handling    | pandas                                    |

---

## 💡 Future Scope

- 🔄 **Integrate with radiology reporting tools** to:
  - Auto-tag entities in real-time
  - Assist radiologists with **structured report generation**

- 🔍 Expand entity types:
  - Severity, Laterality, Modality, Temporal descriptors

- 📊 Use NER output for downstream tasks like:
  - Report classification
  - Alert generation
  - Clinical summarization with RAG

---

## 📸 Demo Screenshot

*Add your screenshot or GIF here*

---

## ✍️ About Me

**Vaibhav Bhardwaj**  
AI/ML Engineer | Passionate about Medical NLP & AI for Healthcare  
[LinkedIn](#) • [Portfolio](#) • [Email](#)

---

## 📂 Project Structure


