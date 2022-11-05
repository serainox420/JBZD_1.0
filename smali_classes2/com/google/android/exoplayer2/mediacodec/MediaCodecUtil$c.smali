.class final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$c;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 505
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    return v0
.end method

.method public a(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .prologue
    .line 510
    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .prologue
    .line 522
    const-string v0, "video/avc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method
