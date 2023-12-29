package middleware

import (
	. "Go-Server-Scaffold/config"
	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
)

func Cors() gin.HandlerFunc {
	corsConfig := cors.DefaultConfig()
	corsConfig.AllowOrigins = Config.Server.AllowOrigins
	corsConfig.AllowCredentials = true
	return cors.New(corsConfig)
}
