import pandas as pd
from sentence_transformers import SentenceTransformer
from sklearn.metrics.pairwise import cosine_similarity

# Load dataset
_movies_df = pd.read_csv("movies.csv")

# Load the Sentence Transformer model
_model = SentenceTransformer("all-MiniLM-L6-v2")

# Convert the plots into embeddings
_embeddings = _model.encode(_movies_df["plot"].tolist(), convert_to_tensor=False)

def search_movies(query, top_n=5):
    query_emb = _model.encode([query], convert_to_tensor=False)
    sims = cosine_similarity(query_emb, _embeddings)[0]
    _movies_df["similarity"] = sims
    results = _movies_df.sort_values("similarity", ascending=False).head(top_n)
    return results[["title", "plot", "similarity"]].reset_index(drop=True)
