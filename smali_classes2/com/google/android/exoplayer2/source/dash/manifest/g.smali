.class public Lcom/google/android/exoplayer2/source/dash/manifest/g;
.super Ljava/lang/Object;
.source "SchemeValuePair.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->a:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->b:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    if-ne p0, p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 39
    goto :goto_0

    .line 41
    :cond_3
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/g;

    .line 42
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/g;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/g;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/g;->b:Ljava/lang/String;

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 47
    goto :goto_0
.end method
