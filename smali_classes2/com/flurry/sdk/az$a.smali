.class public final Lcom/flurry/sdk/az$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/az;
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
        "Lcom/flurry/sdk/az;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/flurry/sdk/ax$a;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ax$a;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/flurry/sdk/az$a;->a:Lcom/flurry/sdk/ax$a;

    .line 23
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 18
    .line 1051
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/az$a;->a:Lcom/flurry/sdk/ax$a;

    if-nez v1, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return-object v0

    .line 1055
    :cond_1
    new-instance v4, Lcom/flurry/sdk/az$a$2;

    invoke-direct {v4, p0, p1}, Lcom/flurry/sdk/az$a$2;-><init>(Lcom/flurry/sdk/az$a;Ljava/io/InputStream;)V

    .line 1062
    new-instance v2, Lcom/flurry/sdk/az;

    invoke-direct {v2, v3}, Lcom/flurry/sdk/az;-><init>(B)V

    .line 1064
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/az;->a(Lcom/flurry/sdk/az;I)I

    .line 1065
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/flurry/sdk/az;->a(Lcom/flurry/sdk/az;J)J

    .line 1066
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 1067
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    invoke-static {v2, v0}, Lcom/flurry/sdk/az;->a(Lcom/flurry/sdk/az;Ljava/lang/String;)Ljava/lang/String;

    .line 1068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v0}, Lcom/flurry/sdk/az;->a(Lcom/flurry/sdk/az;Ljava/util/List;)Ljava/util/List;

    .line 1069
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    move v0, v3

    .line 1070
    :goto_2
    if-ge v0, v1, :cond_3

    .line 1071
    invoke-static {v2}, Lcom/flurry/sdk/az;->d(Lcom/flurry/sdk/az;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/flurry/sdk/az$a;->a:Lcom/flurry/sdk/ax$a;

    invoke-virtual {v5, v4}, Lcom/flurry/sdk/ax$a;->b(Ljava/io/InputStream;)Lcom/flurry/sdk/ax;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 1067
    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 18
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
    .line 18
    check-cast p2, Lcom/flurry/sdk/az;

    .line 2027
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/az$a;->a:Lcom/flurry/sdk/ax$a;

    if-nez v0, :cond_1

    .line 2028
    :cond_0
    :goto_0
    return-void

    .line 2031
    :cond_1
    new-instance v1, Lcom/flurry/sdk/az$a$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/az$a$1;-><init>(Lcom/flurry/sdk/az$a;Ljava/io/OutputStream;)V

    .line 2038
    invoke-static {p2}, Lcom/flurry/sdk/az;->a(Lcom/flurry/sdk/az;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2039
    invoke-static {p2}, Lcom/flurry/sdk/az;->b(Lcom/flurry/sdk/az;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2040
    invoke-static {p2}, Lcom/flurry/sdk/az;->c(Lcom/flurry/sdk/az;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2041
    invoke-static {p2}, Lcom/flurry/sdk/az;->d(Lcom/flurry/sdk/az;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2042
    invoke-static {p2}, Lcom/flurry/sdk/az;->d(Lcom/flurry/sdk/az;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ax;

    .line 2043
    iget-object v3, p0, Lcom/flurry/sdk/az$a;->a:Lcom/flurry/sdk/ax$a;

    invoke-virtual {v3, v1, v0}, Lcom/flurry/sdk/ax$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/ax;)V

    goto :goto_2

    .line 2040
    :cond_2
    invoke-static {p2}, Lcom/flurry/sdk/az;->c(Lcom/flurry/sdk/az;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2046
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method
