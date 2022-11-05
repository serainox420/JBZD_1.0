.class Lcom/mopub/nativeads/e;
.super Lcom/mopub/common/AdUrlGenerator;
.source "NativeUrlGenerator.java"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mopub/nativeads/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string v0, "MAGIC_NO"

    iget-object v1, p0, Lcom/mopub/nativeads/e;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mopub/nativeads/e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string v0, "assets"

    iget-object v1, p0, Lcom/mopub/nativeads/e;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method a(I)Lcom/mopub/nativeads/e;
    .locals 1

    .prologue
    .line 39
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/e;->f:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method a(Lcom/mopub/nativeads/RequestParameters;)Lcom/mopub/nativeads/e;
    .locals 1

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/e;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/e;->d:Landroid/location/Location;

    .line 32
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getDesiredAssets()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/e;->e:Ljava/lang/String;

    .line 34
    :cond_0
    return-object p0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    const-string v0, "nsv"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/nativeads/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "/m/ad"

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/mopub/nativeads/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/e;->a(Lcom/mopub/common/ClientMetadata;)V

    .line 50
    invoke-direct {p0}, Lcom/mopub/nativeads/e;->d()V

    .line 52
    invoke-direct {p0}, Lcom/mopub/nativeads/e;->c()V

    .line 54
    invoke-virtual {p0}, Lcom/mopub/nativeads/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/e;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/e;

    move-result-object v0

    return-object v0
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/e;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mopub/nativeads/e;->b:Ljava/lang/String;

    .line 24
    return-object p0
.end method
