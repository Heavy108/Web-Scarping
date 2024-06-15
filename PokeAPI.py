import requests

def get_pokemon_moves(pokemon_name, version_group):
    url = f"https://pokeapi.co/api/v2/pokemon/{pokemon_name}"
    response = requests.get(url)
    data = response.json()
    
    moves = set()
    for move in data['moves']:
        for version_detail in move['version_group_details']:
            if version_detail['version_group']['name'] == version_group:
                moves.add(move['move']['name'])
    return moves

# Define the Pokémon names and the version group
slowbro_name = "slowbro"
oddish_name = "oddish"
version_group = "emerald"

# Get the moves for both Pokémon in the specified version group
slowbro_moves = get_pokemon_moves(slowbro_name, version_group)
oddish_moves = get_pokemon_moves(oddish_name, version_group)

# Calculate the unique moves that Slowbro has but Oddish does not
unique_slowbro_moves = slowbro_moves - oddish_moves

# Output the number of unique moves
print(len(unique_slowbro_moves))
