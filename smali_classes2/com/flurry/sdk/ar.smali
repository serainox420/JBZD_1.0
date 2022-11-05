.class public Lcom/flurry/sdk/ar;
.super Lcom/flurry/sdk/am;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field protected final h:Lcom/flurry/sdk/aq;

.field protected final i:Ljava/lang/String;

.field protected j:Lcom/flurry/sdk/aq$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/flurry/sdk/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ar;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/aq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/flurry/sdk/am;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/flurry/sdk/ar;->h:Lcom/flurry/sdk/aq;

    .line 23
    iput-object p2, p0, Lcom/flurry/sdk/ar;->i:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected final c()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/aq$c;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/aq$c;

    .line 1146
    iget-object v0, v0, Lcom/flurry/sdk/aq$c;->a:Lcom/flurry/sdk/aq$a;

    .line 45
    :goto_0
    return-object v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ar;->h:Lcom/flurry/sdk/aq;

    if-nez v0, :cond_1

    .line 33
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No cache specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ar;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No cache key specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/ar;->h:Lcom/flurry/sdk/aq;

    iget-object v1, p0, Lcom/flurry/sdk/ar;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aq;->b(Ljava/lang/String;)Lcom/flurry/sdk/aq$c;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/aq$c;

    .line 41
    iget-object v0, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/aq$c;

    if-nez v0, :cond_3

    .line 42
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open writer for key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/ar;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/aq$c;

    .line 2146
    iget-object v0, v0, Lcom/flurry/sdk/aq$c;->a:Lcom/flurry/sdk/aq$a;

    goto :goto_0
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/aq$c;

    invoke-static {v0}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/aq$c;

    .line 52
    return-void
.end method

.method protected final e()V
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flurry/sdk/ar;->h:Lcom/flurry/sdk/aq;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ar;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ar;->h:Lcom/flurry/sdk/aq;

    iget-object v1, p0, Lcom/flurry/sdk/ar;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aq;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ar;->k:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error removing result for key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/ar;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
