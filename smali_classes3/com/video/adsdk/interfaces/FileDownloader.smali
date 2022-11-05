.class public interface abstract Lcom/video/adsdk/interfaces/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# virtual methods
.method public abstract copyInternalToExternal(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract deleteAllFiles()V
.end method

.method public abstract deleteExpiredFiles()V
.end method

.method public abstract downloadFile(Lcom/video/adsdk/internal/ADVideoFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getTargetDirectoryPath()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDownloadProgressListener(Lcom/video/adsdk/interfaces/DownloadProgressListener;)V
.end method
