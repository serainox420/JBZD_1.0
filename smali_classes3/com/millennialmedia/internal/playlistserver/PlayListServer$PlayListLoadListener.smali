.class public interface abstract Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;
.super Ljava/lang/Object;
.source "PlayListServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/playlistserver/PlayListServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayListLoadListener"
.end annotation


# virtual methods
.method public abstract onLoadFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onLoaded(Lcom/millennialmedia/internal/PlayList;)V
.end method
