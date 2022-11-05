.class public final Lcom/flurry/sdk/an;
.super Lcom/flurry/sdk/am;
.source "SourceFile"


# instance fields
.field private final h:Ljava/io/File;

.field private i:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/flurry/sdk/am;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/flurry/sdk/an;->h:Ljava/io/File;

    .line 19
    return-void
.end method


# virtual methods
.method protected final c()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flurry/sdk/an;->i:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/flurry/sdk/an;->i:Ljava/io/OutputStream;

    .line 32
    :goto_0
    return-object v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/an;->h:Ljava/io/File;

    if-nez v0, :cond_1

    .line 28
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No file specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/sdk/an;->h:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/flurry/sdk/an;->i:Ljava/io/OutputStream;

    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/an;->i:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/sdk/an;->i:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/an;->i:Ljava/io/OutputStream;

    .line 39
    return-void
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/sdk/an;->h:Ljava/io/File;

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/an;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
