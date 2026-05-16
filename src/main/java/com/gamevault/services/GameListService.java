package com.gamevault.services;
import java.util.List;
import com.gamevault.model.GameModel;
import com.gamevault.dao.GameDAO;
public class GameListService {
	private GameDAO gameDAO = new GameDAO();
	public List<GameModel> fetchAll(String search) throws Exception {
        return gameDAO.getAllGames(search);
	}
	public List<GameModel> fetchAll(String search, String genre) throws Exception {
        return gameDAO.getAllGames(search, genre);
    }
	
    public List<GameModel> fetchTrending() throws Exception {
        return gameDAO.getTrendingGames(3);
    }

    public List<GameModel> fetchNewest() throws Exception {
        return gameDAO.getNewestGames(3);
    }

    public List<GameModel> fetchBudgetGames() throws Exception {
        return gameDAO.getGamesUnderPrice(20.0, 3);
    }
    public GameModel fetchGameById(int gameId) throws Exception {
        return gameDAO.getGameById(gameId);
    }
}