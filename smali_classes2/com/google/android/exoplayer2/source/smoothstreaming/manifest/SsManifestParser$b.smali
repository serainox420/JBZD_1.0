.class Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$b;
.super Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/UUID;

.field private c:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 404
    const-string v0, "Protection"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    .line 443
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 445
    :cond_0
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 438
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$b;->b:Ljava/util/UUID;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$b;->b:Ljava/util/UUID;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$b;->c:[B

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/c/h;->a(Ljava/util/UUID;[B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;-><init>(Ljava/util/UUID;[B)V

    return-object v0
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .prologue
    .line 414
    const-string v0, "ProtectionHeader"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$b;->a:Z

    .line 416
    const/4 v0, 0x0

    const-string v1, "SystemID"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$b;->b:Ljava/util/UUID;

    .line 420
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 409
    const-string v0, "ProtectionHeader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$b;->a:Z

    if-eqz v0, :cond_0

    .line 425
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$b;->c:[B

    .line 427
    :cond_0
    return-void
.end method

.method public d(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .prologue
    .line 431
    const-string v0, "ProtectionHeader"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$b;->a:Z

    .line 434
    :cond_0
    return-void
.end method
