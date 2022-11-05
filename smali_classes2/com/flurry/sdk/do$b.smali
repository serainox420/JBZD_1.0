.class public final Lcom/flurry/sdk/do$b;
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
    name = "b"
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
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
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
    .line 63
    .line 1075
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/do;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdsAsyncReportInfoSerializerV2 deserialize"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1076
    if-nez p1, :cond_0

    .line 1077
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1080
    :cond_0
    new-instance v1, Lcom/flurry/sdk/do$b$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/do$b$1;-><init>(Lcom/flurry/sdk/do$b;Ljava/io/InputStream;)V

    .line 1087
    new-instance v0, Lcom/flurry/sdk/do;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/flurry/sdk/do;-><init>(B)V

    .line 1089
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 2042
    iput-wide v2, v0, Lcom/flurry/sdk/kw;->n:J

    .line 1090
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    .line 2046
    iput-boolean v2, v0, Lcom/flurry/sdk/kw;->o:Z

    .line 1091
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 2050
    iput v2, v0, Lcom/flurry/sdk/kw;->p:I

    .line 1092
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 2063
    iput-object v2, v0, Lcom/flurry/sdk/kw;->q:Ljava/lang/String;

    .line 1093
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 2067
    iput-object v2, v0, Lcom/flurry/sdk/kw;->r:Ljava/lang/String;

    .line 1095
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/do;->a(Lcom/flurry/sdk/do;Ljava/lang/String;)Ljava/lang/String;

    .line 1096
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/do;->b(Lcom/flurry/sdk/do;Ljava/lang/String;)Ljava/lang/String;

    .line 1097
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/do;->a(Lcom/flurry/sdk/do;Z)Z

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
    .line 2069
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/do;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdsAsyncReportInfoSerializerV2 deserialize"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2070
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Serialization not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
