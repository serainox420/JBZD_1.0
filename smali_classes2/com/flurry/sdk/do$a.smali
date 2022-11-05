.class public final Lcom/flurry/sdk/do$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lg",
        "<",
        "Lcom/flurry/sdk/do;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    .line 1036
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/do;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdsAsyncReportInfoSerializerV1 deserialize"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1037
    if-nez p1, :cond_0

    .line 1038
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1041
    :cond_0
    new-instance v1, Lcom/flurry/sdk/do$a$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/do$a$1;-><init>(Lcom/flurry/sdk/do$a;Ljava/io/InputStream;)V

    .line 1048
    new-instance v0, Lcom/flurry/sdk/do;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/flurry/sdk/do;-><init>(B)V

    .line 1050
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/do;->a(Lcom/flurry/sdk/do;Ljava/lang/String;)Ljava/lang/String;

    .line 1051
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/do;->b(Lcom/flurry/sdk/do;Ljava/lang/String;)Ljava/lang/String;

    .line 1052
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/do;->a(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 2042
    iput-wide v2, v0, Lcom/flurry/sdk/kw;->n:J

    .line 1054
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/do;->a(Lcom/flurry/sdk/do;Z)Z

    .line 1055
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    .line 2046
    iput-boolean v2, v0, Lcom/flurry/sdk/kw;->o:Z

    .line 1056
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 2050
    iput v1, v0, Lcom/flurry/sdk/kw;->p:I

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3030
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/do;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdsAsyncReportInfoSerializerV1 serialize"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3031
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Serialization not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
