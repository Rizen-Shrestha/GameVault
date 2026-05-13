package com.gamevault.services;
import java.util.List;
import com.gamevault.model.GameModel;
import com.gamevault.dao.GameDAO;
public class GameListService {
	private GameDAO gameDAO = new GameDAO();
	public List<GameModel> fetchAll(String search) throws Exception {
        return gameDAO.getAllGames(search);
	}
}