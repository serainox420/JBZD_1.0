.class public final Lcom/flurry/sdk/aq$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/flurry/sdk/aq$a;

.field final synthetic b:Lcom/flurry/sdk/aq;

.field private final c:Lcom/flurry/sdk/ai$a;

.field private final d:Ljava/io/OutputStream;

.field private final e:Ljava/util/zip/GZIPOutputStream;

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ai$a;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 110
    iput-object p1, p0, Lcom/flurry/sdk/aq$c;->b:Lcom/flurry/sdk/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    if-nez p2, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Editor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iput-object p2, p0, Lcom/flurry/sdk/aq$c;->c:Lcom/flurry/sdk/ai$a;

    .line 116
    iget-object v0, p0, Lcom/flurry/sdk/aq$c;->c:Lcom/flurry/sdk/ai$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/ai$a;->a()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/aq$c;->d:Ljava/io/OutputStream;

    .line 117
    iget-object v0, p0, Lcom/flurry/sdk/aq$c;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Editor outputstream is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    if-eqz p3, :cond_3

    .line 123
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->d:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/flurry/sdk/aq$c;->e:Ljava/util/zip/GZIPOutputStream;

    .line 124
    iget-object v0, p0, Lcom/flurry/sdk/aq$c;->e:Ljava/util/zip/GZIPOutputStream;

    if-nez v0, :cond_2

    .line 125
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gzip outputstream is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2
    new-instance v0, Lcom/flurry/sdk/aq$a;

    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->e:Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/aq$a;-><init>(Ljava/io/OutputStream;B)V

    iput-object v0, p0, Lcom/flurry/sdk/aq$c;->a:Lcom/flurry/sdk/aq$a;

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/aq$c;->e:Ljava/util/zip/GZIPOutputStream;

    .line 134
    new-instance v0, Lcom/flurry/sdk/aq$a;

    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->d:Ljava/io/OutputStream;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/aq$a;-><init>(Ljava/io/OutputStream;B)V

    iput-object v0, p0, Lcom/flurry/sdk/aq$c;->a:Lcom/flurry/sdk/aq$a;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ai$a;ZB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/aq$c;-><init>(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ai$a;Z)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 151
    iget-boolean v1, p0, Lcom/flurry/sdk/aq$c;->f:Z

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iput-boolean v0, p0, Lcom/flurry/sdk/aq$c;->f:Z

    .line 157
    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->a:Lcom/flurry/sdk/aq$a;

    invoke-static {v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 158
    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->e:Ljava/util/zip/GZIPOutputStream;

    invoke-static {v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 159
    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->d:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 161
    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->c:Lcom/flurry/sdk/ai$a;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/flurry/sdk/aq$c;->a:Lcom/flurry/sdk/aq$a;

    if-nez v1, :cond_2

    .line 165
    :goto_1
    if-eqz v0, :cond_3

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aq$c;->c:Lcom/flurry/sdk/ai$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/ai$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/aq;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception closing editor for cache: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/aq$c;->b:Lcom/flurry/sdk/aq;

    invoke-static {v4}, Lcom/flurry/sdk/aq;->a(Lcom/flurry/sdk/aq;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/aq$c;->a:Lcom/flurry/sdk/aq$a;

    invoke-static {v0}, Lcom/flurry/sdk/aq$a;->a(Lcom/flurry/sdk/aq$a;)Z

    move-result v0

    goto :goto_1

    .line 168
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/aq$c;->c:Lcom/flurry/sdk/ai$a;

    .line 1810
    iget-boolean v1, v0, Lcom/flurry/sdk/ai$a;->c:Z

    if-eqz v1, :cond_4

    .line 1811
    iget-object v1, v0, Lcom/flurry/sdk/ai$a;->e:Lcom/flurry/sdk/ai;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/ai;->a(Lcom/flurry/sdk/ai;Lcom/flurry/sdk/ai$a;Z)V

    .line 1812
    iget-object v1, v0, Lcom/flurry/sdk/ai$a;->e:Lcom/flurry/sdk/ai;

    iget-object v2, v0, Lcom/flurry/sdk/ai$a;->a:Lcom/flurry/sdk/ai$b;

    .line 1875
    iget-object v2, v2, Lcom/flurry/sdk/ai$b;->a:Ljava/lang/String;

    .line 1812
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ai;->c(Ljava/lang/String;)Z

    .line 1816
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/ai$a;->d:Z

    goto :goto_0

    .line 1814
    :cond_4
    iget-object v1, v0, Lcom/flurry/sdk/ai$a;->e:Lcom/flurry/sdk/ai;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/ai;->a(Lcom/flurry/sdk/ai;Lcom/flurry/sdk/ai$a;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 140
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 142
    invoke-virtual {p0}, Lcom/flurry/sdk/aq$c;->close()V

    .line 143
    return-void
.end method
