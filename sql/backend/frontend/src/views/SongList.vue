<template>
  <div class="song-list">
    <el-table :data="songList" border stripe>
      <el-table-column prop="id" label="ID"/>
      <el-table-column prop="songName" label="歌曲名"/>
      <el-table-column prop="singer" label="歌手"/>
    </el-table>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data(){
    return {
      songList: []
    }
  },
  mounted(){
    axios.get('/song/list').then(res=>{
      this.songList = res.data
    })
  }
}
</script>

