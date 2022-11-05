.class public Lcom/video/adsdk/internal/ADVideoFile;
.super Ljava/lang/Object;
.source "ADVideoFile.java"


# instance fields
.field private expirationDate:J

.field private fileName:Ljava/lang/String;

.field private playAfterPrefetching:Z

.field private uid:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/video/adsdk/internal/ADVideoFile;->playAfterPrefetching:Z

    .line 20
    iput-object p1, p0, Lcom/video/adsdk/internal/ADVideoFile;->url:Ljava/lang/String;

    .line 21
    iput-wide p2, p0, Lcom/video/adsdk/internal/ADVideoFile;->expirationDate:J

    .line 22
    iput-boolean p4, p0, Lcom/video/adsdk/internal/ADVideoFile;->playAfterPrefetching:Z

    .line 24
    invoke-direct {p0, p1}, Lcom/video/adsdk/internal/ADVideoFile;->makeUid(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/video/adsdk/internal/ADVideoFile;->makeFileName(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private getAuthorityFromUrl(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "msp.smartstream.tv"

    const-string v2, "ms.smartstream.tv"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(.*)\\.smartcdn.tv"

    const-string v2, "smartcdn.tv"

    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method private getFileNameFromVideoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/ADVideoFile;->getAuthorityFromUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/video/adsdk/internal/Helper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeFileName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/video/adsdk/internal/ADVideoFile;->getFileNameFromVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoFile;->fileName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private makeUid(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p1}, Lcom/video/adsdk/internal/Helper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/ADVideoFile;->uid:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getExpirationDate()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/video/adsdk/internal/ADVideoFile;->expirationDate:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoFile;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isPrefetchedIn(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/video/adsdk/internal/ADVideoFile;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public shouldPlayAfterPrefetching()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/video/adsdk/internal/ADVideoFile;->playAfterPrefetching:Z

    return v0
.end method
