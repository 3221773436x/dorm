package com.dorm.author;

import java.util.Date;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

/**
 * JWT的token，区分大小写
 */
@ConfigurationProperties(prefix = "config.jwt")
@Component
public class JwtConfig {

	private String secret;
	private long expire;
	private String header;

	/**
	 * 生成token
	 * 
	 * @param subject
	 * @return
	 */
	public String createToken(String subject) {
		Date nowDate = new Date();
		Date expireDate = new Date(nowDate.getTime() + expire * 1000);// 过期时间

		//签发token
		return Jwts.builder().setHeaderParam("typ", "JWT").setSubject(subject).setIssuedAt(nowDate)
				.setExpiration(expireDate).signWith(SignatureAlgorithm.HS512, secret).compact();
	}

	/**
	 * 获取token中注册信息
	 * 
	 * @param token
	 * @return
	 */
	public Claims getTokenClaim(String token) {
		try {
			return Jwts.parser().setSigningKey(secret).parseClaimsJws(token).getBody();
		} catch (Exception e) {
//            e.printStackTrace();
			return null;
			/*
			 * catch (ExpiredJwtException e){ return e.getClaims(); //防止jwt过期解析报错 }
			 */
		}
	}

	/**
	 * 验证token是否过期失效
	 * 
	 * @param expirationTime
	 * @return
	 */
	public boolean isTokenExpired(Date expirationTime) {
		return expirationTime.before(new Date());
	}

	/**
	 * 获取token失效时间
	 * 
	 * @param token
	 * @return
	 */
	public Date getExpirationDateFromToken(String token) {
		return getTokenClaim(token).getExpiration();
	}

	/**
	 * 获取用户名从token中
	 */
	public String getUsernameFromToken(String token) {
		return getTokenClaim(token).getSubject();
	}

	/**
	 * 获取jwt发布时间
	 */
	public Date getIssuedAtDateFromToken(String token) {
		return getTokenClaim(token).getIssuedAt();
	}

	// --------------------- getter & setter ---------------------

	public String getSecret() {
		return secret;
	}

	public void setSecret(String secret) {
		this.secret = secret;
	}

	public long getExpire() {
		return expire;
	}

	public void setExpire(long expire) {
		this.expire = expire;
	}

	public String getHeader() {
		return header;
	}

	public void setHeader(String header) {
		this.header = header;
	}
}
