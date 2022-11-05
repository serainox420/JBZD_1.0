.class public Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
.super Ljava/io/IOException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation


# static fields
.field public static final TYPE_CLOSE:I = 0x3

.field public static final TYPE_OPEN:I = 0x1

.field public static final TYPE_READ:I = 0x2


# instance fields
.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/g;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/g;I)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer2/upstream/g;

    .line 251
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 252
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/g;I)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 262
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer2/upstream/g;

    .line 263
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 264
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/g;I)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 256
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer2/upstream/g;

    .line 257
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/g;I)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer2/upstream/g;

    .line 270
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 271
    return-void
.end method
