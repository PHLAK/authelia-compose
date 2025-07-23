init initialize: config secrets

config:
	@cp --interactive --verbose .skeleton/environment.d/*.env environment.d/ || true
	@cp --interactive --verbose .skeleton/.env . || true

secrets:
	@install --mode 600 --verbose /dev/null volumes/secrets/oidc_hmac_secret
	@install --mode 600 --verbose /dev/null volumes/secrets/reset_password_jwt_secret
	@install --mode 600 --verbose /dev/null volumes/secrets/session_secret
	@install --mode 600 --verbose /dev/null volumes/secrets/storage_encryption_key
