.class public final Lcom/flurry/sdk/do$c;
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
    name = "c"
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
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
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
    .line 104
    .line 1138
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/do;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdsAsyncReportInfoSerializerV3 deserialize"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1139
    if-nez p1, :cond_0

    .line 1140
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1143
    :cond_0
    new-instance v1, Lcom/flurry/sdk/do$c$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/do$c$2;-><init>(Lcom/flurry/sdk/do$c;Ljava/io/InputStream;)V

    .line 1150
    new-instance v0, Lcom/flurry/sdk/do;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/flurry/sdk/do;-><init>(B)V

    .line 1152
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 2042
    iput-wide v2, v0, Lcom/flurry/sdk/kw;->n:J

    .line 1153
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    .line 2046
    iput-boolean v2, v0, Lcom/flurry/sdk/kw;->o:Z

    .line 1154
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 2050
    iput v2, v0, Lcom/flurry/sdk/kw;->p:I

    .line 1155
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 2063
    iput-object v2, v0, Lcom/flurry/sdk/kw;->q:Ljava/lang/String;

    .line 1156
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 2067
    iput-object v2, v0, Lcom/flurry/sdk/kw;->r:Ljava/lang/String;

    .line 1158
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/do;->a(Lcom/flurry/sdk/do;Ljava/lang/String;)Ljava/lang/String;

    .line 1159
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/do;->b(Lcom/flurry/sdk/do;Ljava/lang/String;)Ljava/lang/String;

    .line 1160
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/do;->a(Lcom/flurry/sdk/do;Z)Z

    .line 1161
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/do;->a(Lcom/flurry/sdk/do;I)I

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    check-cast p2, Lcom/flurry/sdk/do;

    .line 2110
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/do;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdsAsyncReportInfoSerializerV3 serialize"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2111
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 2115
    :cond_1
    new-instance v0, Lcom/flurry/sdk/do$c$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/do$c$1;-><init>(Lcom/flurry/sdk/do$c;Ljava/io/OutputStream;)V

    .line 3018
    iget-wide v2, p2, Lcom/flurry/sdk/kw;->n:J

    .line 2122
    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 3022
    iget-boolean v1, p2, Lcom/flurry/sdk/kw;->o:Z

    .line 2123
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3026
    iget v1, p2, Lcom/flurry/sdk/kw;->p:I

    .line 2124
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3030
    iget-object v1, p2, Lcom/flurry/sdk/kw;->q:Ljava/lang/String;

    .line 2125
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 3038
    iget-object v1, p2, Lcom/flurry/sdk/kw;->r:Ljava/lang/String;

    .line 2126
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2128
    invoke-static {p2}, Lcom/flurry/sdk/do;->a(Lcom/flurry/sdk/do;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2129
    invoke-static {p2}, Lcom/flurry/sdk/do;->b(Lcom/flurry/sdk/do;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2130
    invoke-static {p2}, Lcom/flurry/sdk/do;->c(Lcom/flurry/sdk/do;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2131
    invoke-static {p2}, Lcom/flurry/sdk/do;->d(Lcom/flurry/sdk/do;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2133
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method
