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


Data Preprocessing : Run create_train.py and create_test.py

Run resize script to resize images to 8*8 to perform tensor operations of same dimensions



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

Generative Replay

GEN baseline example:

python gen_main.py --method rand_gen --gen_method rand_gen --samples_per_task 1000 --dataset kddcup99

GEN-MIR (MIR only on the classifier):

python gen_main.py --method mir_gen --gen_method rand_gen --samples_per_task 1000 --dataset kddcup99

GEN-MIR (MIR only on the generator):

python gen_main.py --method rand_gen --gen_method mir_gen --samples_per_task 1000 --dataset kddcup99

GEN-MIR:

python gen_main.py --method mir_gen --gen_method mir_gen --samples_per_task 1000 --dataset kddcup99

Acknowledgements

We would like to thank authors of the following repositories (from which we borrowed code) for making the code public.

    https://github.com/riannevdberg/sylvester-flows
   
   We would also like to thank Massimo,Eugene and Lucas (from which we adapted the code to fit to KDDCUP99 dataset)
   
   
   
   https://github.com/optimass



