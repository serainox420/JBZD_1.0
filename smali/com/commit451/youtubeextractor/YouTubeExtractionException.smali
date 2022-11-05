.class public Lcom/commit451/youtubeextractor/YouTubeExtractionException;
.super Ljava/io/IOException;
.source "YouTubeExtractionException.java"


# instance fields
.field public errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionException;->errorCode:I

    .line 12
    iput p1, p0, Lcom/commit451/youtubeextractor/YouTubeExtractionException;->errorCode:I

    .line 13
    return-void
.end method
