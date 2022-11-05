.class public interface abstract Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;
.super Ljava/lang/Object;
.source "PlayListServerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdapterLoadListener"
.end annotation


# virtual methods
.method public abstract loadFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract loadSucceeded(Lcom/millennialmedia/internal/PlayList;)V
.end method
