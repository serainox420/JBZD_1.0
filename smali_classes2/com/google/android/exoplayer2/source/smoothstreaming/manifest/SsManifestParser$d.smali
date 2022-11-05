.class Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;
.super Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:I

.field private h:Z

.field private i:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 345
    const-string v0, "SmoothStreamingMedia"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->g:I

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->i:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    .line 348
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->a:Ljava/util/List;

    .line 349
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v13, v0, [Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    .line 376
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->a:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->i:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    if-eqz v0, :cond_1

    .line 378
    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    new-instance v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->i:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;->a:Ljava/util/UUID;

    const-string v5, "video/mp4"

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->i:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;->b:[B

    invoke-direct {v2, v4, v5, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v2, v0, v1

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 380
    array-length v4, v13

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v13, v2

    move v0, v1

    .line 381
    :goto_1
    iget-object v6, v5, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->j:[Lcom/google/android/exoplayer2/Format;

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 382
    iget-object v6, v5, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->j:[Lcom/google/android/exoplayer2/Format;

    iget-object v7, v5, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->j:[Lcom/google/android/exoplayer2/Format;

    aget-object v7, v7, v0

    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    aput-object v7, v6, v0

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 386
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->b:I

    iget v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->c:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->d:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->e:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->f:J

    iget v10, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->g:I

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->h:Z

    iget-object v12, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->i:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;-><init>(IIJJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;)V

    return-object v1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 365
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->a:Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->i:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 369
    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->i:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    goto :goto_0

    .line 368
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 353
    const-string v0, "MajorVersion"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->b:I

    .line 354
    const-string v0, "MinorVersion"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->c:I

    .line 355
    const-string v0, "TimeScale"

    const-wide/32 v2, 0x989680

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->d:J

    .line 356
    const-string v0, "Duration"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->e:J

    .line 357
    const-string v0, "DVRWindowLength"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->f:J

    .line 358
    const-string v0, "LookaheadCount"

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->g:I

    .line 359
    const-string v0, "IsLive"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->h:Z

    .line 360
    const-string v0, "TimeScale"

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    return-void
.end method
