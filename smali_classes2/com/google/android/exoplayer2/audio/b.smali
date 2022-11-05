.class public final Lcom/google/android/exoplayer2/audio/b;
.super Ljava/lang/Object;
.source "AudioCapabilities.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/audio/b;


# instance fields
.field private final b:[I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/audio/b;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer2/audio/b;-><init>([II)V

    sput-object v0, Lcom/google/android/exoplayer2/audio/b;->a:Lcom/google/android/exoplayer2/audio/b;

    return-void
.end method

.method constructor <init>([II)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/b;->b:[I

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b;->b:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 78
    :goto_0
    iput p2, p0, Lcom/google/android/exoplayer2/audio/b;->c:I

    .line 79
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/b;->b:[I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/b;
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/b;->a(Landroid/content/Intent;)Lcom/google/android/exoplayer2/audio/b;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Intent;)Lcom/google/android/exoplayer2/audio/b;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 53
    if-eqz p0, :cond_0

    const-string v0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/audio/b;->a:Lcom/google/android/exoplayer2/audio/b;

    .line 57
    :goto_0
    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/audio/b;

    const-string v1, "android.media.extra.ENCODINGS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 57
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/b;-><init>([II)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    if-ne p0, p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    instance-of v2, p1, Lcom/google/android/exoplayer2/audio/b;

    if-nez v2, :cond_2

    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :cond_2
    check-cast p1, Lcom/google/android/exoplayer2/audio/b;

    .line 107
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/b;->b:[I

    iget-object v3, p1, Lcom/google/android/exoplayer2/audio/b;->b:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/audio/b;->c:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/b;->c:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/google/android/exoplayer2/audio/b;->c:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedEncodings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b;->b:[I

    .line 119
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
