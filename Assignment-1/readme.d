
# Movie Semantic Search Assignment

This repository contains my solution for the semantic search on movie plots assignment.

## Setup
1. Clone the repository  
   ```bash
   git clone https://github.com/your-username/movie-search-assignment.git
   cd movie-search-assignment
````

2. Install dependencies

   ```bash
   pip install -r requirements.txt
   ```
3. Open notebook

   ```bash
   jupyter notebook movie_search_solution.ipynb
   ```

## Usage

Run inside Python:

```python
from movie_search import search_movies
print(search_movies("spy thriller in Paris", 5))
```

## Testing

```bash
python -m unittest tests/test_movie_search.py -v
```

```

---

Once you copy these files into your repo (along with `movies.csv` and `tests/test_movie_search.py` from the template), just **commit + push**, then submit the repo link.  

Do you want me to also spit out the `.gitignore` contents so your repo looks 100% correct?
```
