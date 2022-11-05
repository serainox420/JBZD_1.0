.class public interface abstract Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onDownloadSucceeded(Ljava/io/File;)V
.end method
