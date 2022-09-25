package middleware

import (
	. "Go-Server-Scaffold/config"
	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
)

func Cors(c *gin.Context) {
	cors := cors.Default()
	if Config.Dev {
		cors.AllowAllOrigins = true
	}
	// TODO: add AllowHeaders
	/* cors.AllowHeaders = append(cors.AllowHeaders, "Authorization") */
	cors.AllowOrigins = append(cors.AllowOrigins, Config.Server.AllowOrigins)
}
