# Max_Int_Retrieval_KDDCUP99
Maximally Interfered Retrieval for KDDCUP99


Online Continual Learning with Maximally Interfered Retrieval (NeurIPS 2019)

Controlled sampling of memories for replay: retrieving the samples which are most interfered, i.e. whose prediction will be most negatively impacted by the foreseen parameters update.

    paper
    summary
    video

(key) Requirements

    Python 3.6
    Pytorch 1.1.0

pip install -r requirements.txt

Running Experiments

    ER = Experience Replay baseline
    ER-MIR = Experience Replay + Maximally Interfered Retrieval
    GEN = Generative Replay baseline
    GEN-MIR = Generative Replay + Maximally Interfered Retrieval
    AE = Hybrid Replay baseline
    AE-MIR = Hybrid Replay + Maximally Interfered Retrieval

Experience Replay

ER baseline example:

python er_main.py --method rand_replay --dataset kddcup99 --mem_size 50

ER-MIR example:

python er_main.py --method mir_replay --dataset kddcup99 --mem_size 50
