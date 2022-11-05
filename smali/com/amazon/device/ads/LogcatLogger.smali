.class Lcom/amazon/device/ads/LogcatLogger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/amazon/device/ads/Logger;


# instance fields
.field private logTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amazon/device/ads/LogcatLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazon/device/ads/LogcatLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazon/device/ads/LogcatLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazon/device/ads/LogcatLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazon/device/ads/LogcatLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/LogcatLogger;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amazon/device/ads/LogcatLogger;->logTag:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public bridge synthetic withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Logger;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/LogcatLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/LogcatLogger;

    move-result-object v0

    return-object v0
.end method
