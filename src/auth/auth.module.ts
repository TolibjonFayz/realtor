import { Module } from '@nestjs/common';
import { AuthController } from './auth.controller';
import { JwtModule } from '@nestjs/jwt';
import { PrismaModule } from '../prisma/prisma.module';
import {
  AccessTokenStrategy,
  RefreshTokenFromBearerStategy,
  RefreshTokenFromCookieStategy,
} from './strategies';
import { AccessTokenGuard } from '../common/guards';
import { APP_GUARD } from '@nestjs/core';
import { AuthService } from './auth.service';

@Module({
  imports: [JwtModule.register({}), PrismaModule],
  controllers: [AuthController],
  providers: [
    AuthService,
    AccessTokenStrategy,
    RefreshTokenFromBearerStategy,
    RefreshTokenFromCookieStategy,
    {
      provide: APP_GUARD,
      useClass: AccessTokenGuard,
    },
  ],
})
export class AuthModule {}
