# Biomedical Question Answering System

A retrieval-augmented generation (RAG) system for biomedical question answering using BM25, bge-base transformers, and SentenceTransformer for accurate document retrieval and response generation.

## Overview

This project implements a complete RAG pipeline for biomedical queries, achieving improved document retrieval accuracy through fine-tuned SentenceTransformer models. The system indexes 5K+ documents and provides precise answers using an enhanced retriever with BM25 augmentation and hard negative sampling.

**Kaggle Competition**: This implementation was developed for a biomedical information retrieval competition, achieving +12% BLEU score improvement over baseline methods.

## Features

- **BM25 + bge-base Transformers**: Hybrid retrieval approach combining traditional and neural retrieval methods
- **Fine-tuned SentenceTransformer**: Custom model trained on 5K+ IR datasets for improved accuracy (+12% BLEU score)
- **LangChain Integration**: Structured retriever-generator architecture with LangChain agents
- **AWS EC2 Deployment**: Cached inference pipeline for efficient query processing
- **Comprehensive Evaluation**: BLEU-based evaluation metrics for system performance

## Technologies

- **Python**: Core programming language
- **LangChain**: Framework for building LLM applications
- **SentenceTransformer**: For semantic embeddings and retrieval
- **BM25**: Traditional information retrieval algorithm
- **bge-base**: BAAI General Embedding model
- **AWS EC2**: Cloud infrastructure for deployment
- **Transformers (Hugging Face)**: Pre-trained language models

## Project Structure

```
Biomedical-QA-System/
├── README.md
├── requirements.txt
├── .gitignore
├── notebooks/
│   └── kaggle_3_final_code.ipynb    # Main implementation notebook
└── docs/
    └── kaggle_3_final_code.pdf      # Project documentation
```

## Key Components

The main implementation is in the Jupyter notebook (`kaggle_3_final_code.ipynb`) which includes:

- **EnhancedRetriever Class**: Complete retriever implementation with:
  - BM25 integration for hard negative sampling
  - BAAI/bge-base-en-v1.5 model for semantic embeddings
  - Fine-tuning on biomedical datasets
  - Information retrieval evaluation
  
- **Features**:
  - Hard negative sampling using BM25
  - Multiple negatives ranking loss
  - Precomputed corpus embeddings for efficient retrieval
  - Comprehensive evaluation metrics

## Installation

```bash
# Clone the repository
git clone https://github.com/aryamanjalali/biomedical-qa-system.git
cd biomedical-qa-system

# Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt
```

## Usage

### Running the Notebook

1. Open the Jupyter notebook:
```bash
jupyter notebook notebooks/kaggle_3_final_code.ipynb
```

2. The notebook includes:
   - Data loading and preprocessing
   - EnhancedRetriever class initialization
   - Model training with fine-tuning
   - Evaluation and inference

### Quick Start

```python
from notebooks.kaggle_3_final_code import EnhancedRetriever
import pandas as pd

# Load data
documents_df = pd.read_csv('kaggle_3_documents.csv')
train_df = pd.read_csv('kaggle_3_train.csv')

# Initialize retriever
retriever = EnhancedRetriever(model_name="BAAI/bge-base-en-v1.5")

# Load corpus
retriever.load_corpus(documents_df)

# Train model
retriever.fit(
    train_df=train_df,
    negative_samples=3,
    epochs=1,
    output_path="output/biomedical-retrieval-model"
)

# Retrieve documents
results = retriever.retrieve("What are the symptoms of diabetes?", top_k=5)
```

## Results

- **BLEU Score Improvement**: +12% over baseline
- **Document Retrieval Accuracy**: Significantly improved with fine-tuned SentenceTransformer
- **Indexed Documents**: 5K+ biomedical documents
- **Response Quality**: High precision responses through LangChain agent architecture

## Deployment

The system is deployed on AWS EC2 with a cached inference pipeline for optimal performance.

```bash
python scripts/deploy.py --instance_type t3.medium
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License.

## Author

**Aryaman Jalali**
- GitHub: [@aryamanjalali](https://github.com/aryamanjalali)
- LinkedIn: [aryamanjalali](https://www.linkedin.com/in/aryamanjalali/)
- Email: aryamanj@bu.edu

## Acknowledgments

- LangChain team for the excellent framework
- Hugging Face for pre-trained models
- BAAI for the bge-base embedding model

---

**Project Period**: March 2025 - April 2025

