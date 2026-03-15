---
title: 'BartSmiles: Generative Masked Language Models for Molecular Representations'
date: 2024-07-25
weight: 1

journal: https://doi.org/10.1021/acs.jcim.4c00512
arxiv: https://arxiv.org/abs/2211.16349
pdf: https://arxiv.org/pdf/2211.16349
github: https://github.com/YerevaNN/BARTSmiles.git
model: https://huggingface.co/gayane/BARTSmiles

featured: images/ames.svg

intro: |
    We discover a robust self-supervised strategy tailored towards molecular representations for generative masked language models through a series of tailored, in-depth ablations. Using this pre-training strategy, we train BartSmiles, a BART-like model with an order of magnitude more compute than previous self-supervised molecular representations. In-depth evaluations show that BartSmiles consistently outperforms other self-supervised representations across classification, regression, and generation tasks setting a new state-of-the-art on 10 tasks. We then quantitatively show that when applied to the molecular domain, the BART objective learns representations that implicitly encode our downstream tasks of interest. For example, by selecting seven neurons from a frozen BartSmiles, we can obtain a model having performance within two percentage points of the full fine-tuned model on task Clintox. Lastly, we show that standard attribution interpretability methods, when applied to BartSmiles, highlight certain substructures that chemists use to explain specific properties of molecules.
---