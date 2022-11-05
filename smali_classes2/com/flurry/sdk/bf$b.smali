.class public final Lcom/flurry/sdk/bf$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lg",
        "<",
        "Lcom/flurry/sdk/bf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 14
    .line 1025
    if-nez p1, :cond_0

    .line 1026
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1029
    :cond_0
    new-instance v1, Lcom/flurry/sdk/bf$b$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/bf$b$1;-><init>(Lcom/flurry/sdk/bf$b;Ljava/io/InputStream;)V

    .line 1036
    new-instance v0, Lcom/flurry/sdk/bf;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/flurry/sdk/bf;-><init>(B)V

    .line 1038
    sget-object v2, Lcom/flurry/sdk/da;->a:Lcom/flurry/sdk/da;

    .line 2013
    iput-object v2, v0, Lcom/flurry/sdk/bf;->a:Lcom/flurry/sdk/da;

    .line 3013
    iput-wide v4, v0, Lcom/flurry/sdk/bf;->e:J

    .line 4013
    iput-wide v4, v0, Lcom/flurry/sdk/bf;->j:J

    .line 1042
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 5013
    iput-object v2, v0, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    .line 1043
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 6013
    iput-wide v2, v0, Lcom/flurry/sdk/bf;->c:J

    .line 1044
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 7013
    iput-wide v2, v0, Lcom/flurry/sdk/bf;->d:J

    .line 1045
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 8013
    iput v2, v0, Lcom/flurry/sdk/bf;->i:I

    .line 1046
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 9013
    iput v2, v0, Lcom/flurry/sdk/bf;->f:I

    .line 1047
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 10013
    iput v2, v0, Lcom/flurry/sdk/bf;->g:I

    .line 1048
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 11013
    iput v1, v0, Lcom/flurry/sdk/bf;->h:I

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11020
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Serialization not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
