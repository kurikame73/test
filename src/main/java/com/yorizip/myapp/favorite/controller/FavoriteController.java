package com.yorizip.myapp.favorite.controller;

import com.yorizip.myapp.favorite.service.FavoriteService;
import com.yorizip.myapp.favorite.vo.FavoriteRecipeVO;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class FavoriteController {

    private final FavoriteService favoriteService;


    public FavoriteController(FavoriteService favoriteService) {
        this.favoriteService = favoriteService;
    }

    // 사용자가 레시피를 찜하는 API
    @PostMapping("/{userId}/favorite")
    @ResponseBody
    public String addFavoriteRecipe(@PathVariable Long userId, @RequestParam(required = false) Long recipeId) {
        favoriteService.addFavoriteRecipe(userId, recipeId);
        return "Recipe added to favorites successfully!";
    }

    // 사용자가 찜한 레시피 목록을 조회하는 API
    @GetMapping("/{userId}/favorite")
    @ResponseBody
    public ResponseEntity<List<FavoriteRecipeVO>> getFavoriteRecipes(@PathVariable Long userId) {
        return ResponseEntity.ok(favoriteService.getFavoriteRecipesByUserId(userId));
    }

    // 사용자가 찜한 레시피를 삭제하는 API
    @DeleteMapping("/{userId}/favorite")
    @ResponseBody
    public String removeFavoriteRecipe(@PathVariable Long userId, @RequestParam Long recipeId) {
        favoriteService.removeFavoriteRecipe(userId, recipeId);
        return "Recipe removed from favorites successfully!";
    }
}
