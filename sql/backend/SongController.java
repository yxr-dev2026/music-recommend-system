package com.music.controller;

import com.music.entity.Song;
import com.music.service.SongService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/song")
public class SongController {
    @Resource
    private SongService songService;

    @GetMapping("/list")
    public List<Song> list(){
        return songService.list();
    }
}

