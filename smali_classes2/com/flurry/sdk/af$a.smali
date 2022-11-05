.class public final Lcom/flurry/sdk/af$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/af;
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
        "Lcom/flurry/sdk/af;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
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
    .line 13
    .line 1043
    if-nez p1, :cond_0

    .line 1044
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1047
    :cond_0
    new-instance v1, Lcom/flurry/sdk/af$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/af$a$2;-><init>(Lcom/flurry/sdk/af$a;Ljava/io/InputStream;)V

    .line 1054
    new-instance v0, Lcom/flurry/sdk/af;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/flurry/sdk/af;-><init>(B)V

    .line 1056
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 2012
    iput-object v2, v0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 1057
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/flurry/sdk/as;->a(I)Lcom/flurry/sdk/as;

    move-result-object v2

    .line 3012
    iput-object v2, v0, Lcom/flurry/sdk/af;->b:Lcom/flurry/sdk/as;

    .line 1058
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 4012
    iput-wide v2, v0, Lcom/flurry/sdk/af;->c:J

    .line 1059
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 5012
    iput-wide v2, v0, Lcom/flurry/sdk/af;->d:J

    .line 1060
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/flurry/sdk/al;->a(I)Lcom/flurry/sdk/al;

    move-result-object v2

    .line 6012
    iput-object v2, v0, Lcom/flurry/sdk/af;->e:Lcom/flurry/sdk/al;

    .line 1061
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 7012
    iput-wide v2, v0, Lcom/flurry/sdk/af;->f:J

    .line 1062
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 8012
    iput-wide v2, v0, Lcom/flurry/sdk/af;->g:J

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
    .line 13
    check-cast p2, Lcom/flurry/sdk/af;

    .line 8019
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 8020
    :cond_0
    :goto_0
    return-void

    .line 8023
    :cond_1
    new-instance v0, Lcom/flurry/sdk/af$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/af$a$1;-><init>(Lcom/flurry/sdk/af$a;Ljava/io/OutputStream;)V

    .line 9012
    iget-object v1, p2, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 8030
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 10012
    iget-object v1, p2, Lcom/flurry/sdk/af;->b:Lcom/flurry/sdk/as;

    .line 10019
    iget v1, v1, Lcom/flurry/sdk/as;->e:I

    .line 8031
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 11012
    iget-wide v2, p2, Lcom/flurry/sdk/af;->c:J

    .line 8032
    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 12012
    iget-wide v2, p2, Lcom/flurry/sdk/af;->d:J

    .line 8033
    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 13012
    iget-object v1, p2, Lcom/flurry/sdk/af;->e:Lcom/flurry/sdk/al;

    .line 13022
    iget v1, v1, Lcom/flurry/sdk/al;->h:I

    .line 8034
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 14012
    iget-wide v2, p2, Lcom/flurry/sdk/af;->f:J

    .line 8035
    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 15012
    iget-wide v2, p2, Lcom/flurry/sdk/af;->g:J

    .line 8036
    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 8038
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method
