.class public final Lcom/flurry/sdk/bf$a;
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
    name = "a"
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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
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
    .line 54
    .line 1088
    if-nez p1, :cond_0

    .line 1089
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1092
    :cond_0
    new-instance v2, Lcom/flurry/sdk/bf$a$2;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/bf$a$2;-><init>(Lcom/flurry/sdk/bf$a;Ljava/io/InputStream;)V

    .line 1099
    new-instance v1, Lcom/flurry/sdk/bf;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/flurry/sdk/bf;-><init>(B)V

    .line 1101
    const-class v0, Lcom/flurry/sdk/da;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/da;

    .line 2013
    iput-object v0, v1, Lcom/flurry/sdk/bf;->a:Lcom/flurry/sdk/da;

    .line 1102
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 3013
    iput-object v0, v1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    .line 1103
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 4013
    iput-wide v4, v1, Lcom/flurry/sdk/bf;->c:J

    .line 1104
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 5013
    iput-wide v4, v1, Lcom/flurry/sdk/bf;->d:J

    .line 1105
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 6013
    iput-wide v4, v1, Lcom/flurry/sdk/bf;->e:J

    .line 1106
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 7013
    iput v0, v1, Lcom/flurry/sdk/bf;->f:I

    .line 1107
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 8013
    iput v0, v1, Lcom/flurry/sdk/bf;->g:I

    .line 1108
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 9013
    iput v0, v1, Lcom/flurry/sdk/bf;->h:I

    .line 1110
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 10013
    iput v0, v1, Lcom/flurry/sdk/bf;->i:I

    .line 1111
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 11013
    iput-wide v2, v1, Lcom/flurry/sdk/bf;->j:J

    move-object v0, v1

    .line 54
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
    .line 54
    check-cast p2, Lcom/flurry/sdk/bf;

    .line 11060
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 11061
    :cond_0
    :goto_0
    return-void

    .line 11064
    :cond_1
    new-instance v0, Lcom/flurry/sdk/bf$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/bf$a$1;-><init>(Lcom/flurry/sdk/bf$a;Ljava/io/OutputStream;)V

    .line 12013
    iget-object v1, p2, Lcom/flurry/sdk/bf;->a:Lcom/flurry/sdk/da;

    .line 11071
    invoke-virtual {v1}, Lcom/flurry/sdk/da;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 13013
    iget-object v1, p2, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    .line 11072
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 14013
    iget-wide v2, p2, Lcom/flurry/sdk/bf;->c:J

    .line 11073
    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 15013
    iget-wide v2, p2, Lcom/flurry/sdk/bf;->d:J

    .line 11074
    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 16013
    iget-wide v2, p2, Lcom/flurry/sdk/bf;->e:J

    .line 11075
    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 17013
    iget v1, p2, Lcom/flurry/sdk/bf;->f:I

    .line 11076
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 18013
    iget v1, p2, Lcom/flurry/sdk/bf;->g:I

    .line 11077
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 19013
    iget v1, p2, Lcom/flurry/sdk/bf;->h:I

    .line 11078
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 20013
    iget v1, p2, Lcom/flurry/sdk/bf;->i:I

    .line 11080
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 21013
    iget-wide v2, p2, Lcom/flurry/sdk/bf;->j:J

    .line 11081
    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 11083
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method
