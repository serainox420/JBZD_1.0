.class final Lcom/google/android/exoplayer2/metadata/b$1;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 78
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 84
    :pswitch_0
    const-string v1, "com.google.android.exoplayer2.metadata.id3.a"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 82
    :sswitch_0
    const-string v2, "application/id3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "application/x-emsg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "application/x-scte35"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 86
    :pswitch_1
    const-string v1, "com.google.android.exoplayer2.metadata.emsg.a"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 88
    :pswitch_2
    const-string v1, "com.google.android.exoplayer2.metadata.scte35.a"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    goto :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a682ec7 -> :sswitch_0
        0x44ce7ed0 -> :sswitch_1
        0x62816bb7 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/b$1;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/a;
    .locals 3

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/b$1;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempted to create decoder for unsupported format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error instantiating decoder"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :cond_0
    :try_start_1
    const-class v1, Lcom/google/android/exoplayer2/metadata/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method
